# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

function Install-AzModule_Default {
    [OutputType([PSCustomObject[]])]
    [CmdletBinding(PositionalBinding = $false, SupportsShouldProcess)]
    param(
        [Parameter(ValueFromPipelineByPropertyName = $true, Position = 0)]
        [string[]]
        ${Name},

        [Parameter()]
        [ValidateNotNullOrEmpty()]
        [string]
        ${RequiredAzVersion},

        [Parameter()]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Repository},

        [Parameter()]
        [Switch]
        ${AllowPrerelease},

        [Parameter()]
        [Switch]
        ${UseExactAccountVersion},

        [Parameter()]
        [ValidateSet('CurrentUser', 'AllUsers')]
        [string]
        ${Scope},

        [Parameter()]
        [Switch]
        ${RemovePrevious},

        [Parameter()]
        [Switch]
        ${RemoveAzureRm},

        [Parameter()]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Invoker},

        [Parameter()]
        [Switch]
        ${Force}
    )

    process {
        Write-Progress -Id $script:FixProgressBarId "Find modules on $Repository."

        $Name = Normalize-ModuleName $Name -ErrorVariable +errorRecords
        $findModuleParams = @{
            Name = $Name
            AllowPrerelease = $AllowPrerelease
            UseExactAccountVersion = $UseExactAccountVersion
            Invoker = $Invoker
        }
        if ($Repository) {
            $findModuleParams.Add('Repository', $Repository)
        }
        if ($RequiredAzVersion) {
            $findModuleParams.Add('RequiredVersion', [Version]$RequiredAzVersion)
        }

        $modules = @()
        $modules += Get-AzModuleFromRemote @findModuleParams -ErrorVariable +errorRecords | Sort-Object -Property Name
        if ($modules) {
            $Repository = $modules.Repository | Select-Object -First 1
        }

        if($Name) {
            $moduleExcluded = $Name | Where-Object {!$modules -or $modules.Name -NotContains $_}
            if ($moduleExcluded) {
                $azVersion = if ($RequiredAzVersion) {$RequiredAzVersion} else {"Latest"}
                $Repository = if ($Repository) {$Repository} else {'the registered repositories'}
                Write-Error "[$Invoker] The following specified modules:$moduleExcluded cannot be found in $Repository with the $azVersion version." -ErrorVariable +errorRecords
            }
        }

        if ($RemoveAzureRm -and ($Force -or $PSCmdlet.ShouldProcess('Remove AzureRm modules', 'AzureRm modules', 'Remove'))) {
            Write-Progress -Id $script:FixProgressBarId "Uninstall Azure and AzureRM."
            Remove-AzureRM -ErrorVariable +errorRecords
        }

        if ($Force -or $PSCmdlet.ShouldProcess('Remove Az if installed', 'Az', 'Remove')) {
            PowerShellGet\Uninstall-Module -Name 'Az' -AllVersion -AllowPrerelease -ErrorAction SilentlyContinue -ErrorVariable +errorRecords
        }

        if ($modules) {
            $moduleList = $modules | ForEach-Object {
                $m = New-Object ModuleInfo
                $m.Name = $_.Name
                $m.Version += [Version] $_.Version
                $m
            }
            $installModuleParams = @{
                ModuleList = $moduleList
                RepositoryUrl = (Get-RepositoryUrl $Repository)
                AllowPrerelease = $AllowPrerelease
                Scope = if ($Scope) {$Scope} else {'CurrentUser'}
                RemovePrevious = $RemovePrevious
                Force = $Force
                Invoker = $Invoker
            }
            $output = Install-AzModuleInternal @installModuleParams -ErrorVariable +errorRecords

            if (!$WhatIfPreference -and $output) {
                Write-Output $output
            }
        }
    }
}
