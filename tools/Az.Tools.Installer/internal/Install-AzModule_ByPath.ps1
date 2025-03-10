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

function Install-AzModule_ByPath {
    [OutputType([PSCustomObject[]])]
    [CmdletBinding(PositionalBinding = $false, SupportsShouldProcess)]
    param(
        [Parameter(Mandatory)]
        [ValidateNotNullOrEmpty()]
        [string]
        ${Path},

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
        ${Force},

        [Parameter()]
        [Switch]
        ${DontClean}
    )

    process {
        if ($RemoveAzureRm -and ($Force -or $PSCmdlet.ShouldProcess('Remove AzureRm modules', 'AzureRm modules', 'Remove'))) {
            Write-Progress -Id $script:FixProgressBarId "Uninstall Azure and AzureRM."
            Remove-AzureRM -ErrorVariable +errorRecords
        }

        if ($Force -or $PSCmdlet.ShouldProcess('Remove Az if installed', 'Az', 'Remove')) {
            PowerShellGet\Uninstall-Module -Name 'Az' -AllVersion -AllowPrerelease -ErrorAction SilentlyContinue -ErrorVariable +errorRecords
        }

        try {
            Write-Progress -Id $script:FixProgressBarId "Download the packagke from $Path."

            if ($Force -or !$WhatIfPreference) {
                [string]$tempRepo = Join-Path ([Path]::GetTempPath()) ((New-Guid).Guid)
                #$tempRepo = Join-Path 'D:/PSLocalRepo/' (Get-Date -Format "yyyyddMM-HHmm")
                if (Test-Path -Path $tempRepo) {
                    Microsoft.PowerShell.Management\Remove-Item -Path $tempRepo -Recurse -WhatIf:$false -ErrorVariable +errorRecords
                }
                $null = Microsoft.PowerShell.Management\New-Item -ItemType Directory -Path $tempRepo -WhatIf:$false -ErrorVariable +errorRecords
                Write-Debug "[$Invoker] The repository folder $tempRepo is created."

                PowerShellGet\Unregister-PSRepository -Name $script:AzTempRepoName -ErrorAction 'SilentlyContinue' -ErrorVariable +errorRecords
                PowerShellGet\Register-PSRepository -Name $script:AzTempRepoName -SourceLocation $tempRepo -ErrorAction 'Stop' -ErrorVariable +errorRecords
                PowerShellGet\Set-PSRepository -Name $script:AzTempRepoName -InstallationPolicy Trusted -ErrorVariable +errorRecords
                Write-Debug "[$Invoker] The temporary repository $script:AzTempRepoName is registered."

                $installModuleParams = @{
                    Path = $Path
                    DestinationPath = $tempRepo
                    Scope = if ($Scope) {$Scope} else {'CurrentUser'}
                    RemovePrevious = $RemovePrevious
                    Force = $Force
                    Invoker = $Invoker
                }
                Install-SingleModuleFromPackage @installModuleParams -ErrorVariable +errorRecords
            }
        }
        finally {
            if ($Force -or !$WhatIfPreference) {
                if (!$DontClean) {
                    Write-Debug "[$Invoker] The temporary repository $script:AzTempRepoName is unregistered."
                    PowerShellGet\Unregister-PSRepository -Name $script:AzTempRepoName -ErrorAction 'Continue' -ErrorVariable +errorRecords

                    Write-Debug "[$Invoker] The Repository folder $tempRepo is removed."
                    if (Test-Path -Path $tempRepo) {
                        Microsoft.PowerShell.Management\Remove-Item -Path $tempRepo -Recurse -WhatIf:$false -ErrorVariable +errorRecords
                    }
                }
            }
        }
    }
}
