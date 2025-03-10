#
# Module manifest for module 'Az'
#
# Generated by: Microsoft Corporation
#
# Generated on: 9/27/2023
#

@{

# Script module or binary module file associated with this manifest.
# RootModule = ''

# Version number of this module.
ModuleVersion = '10.4.1'

# Supported PSEditions
CompatiblePSEditions = 'Core', 'Desktop'

# ID used to uniquely identify this module
GUID = 'd48d710e-85cb-46a1-990f-22dae76f6b5f'

# Author of this module
Author = 'Microsoft Corporation'

# Company or vendor of this module
CompanyName = 'Microsoft Corporation'

# Copyright statement for this module
Copyright = 'Microsoft Corporation. All rights reserved.'

# Description of the functionality provided by this module
Description = 'Microsoft Azure PowerShell - Cmdlets to manage resources in Azure. This module is compatible with PowerShell and Windows PowerShell.
For more information about the Az module, please visit the following: https://learn.microsoft.com/powershell/azure/'

# Minimum version of the PowerShell engine required by this module
PowerShellVersion = '5.1'

# Name of the PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
DotNetFrameworkVersion = '4.7.2'

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# ClrVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
RequiredModules = @(@{ModuleName = 'Az.Accounts'; ModuleVersion = '2.13.1'; }, 
               @{ModuleName = 'Az.Advisor'; RequiredVersion = '2.0.0'; }, 
               @{ModuleName = 'Az.Aks'; RequiredVersion = '5.5.1'; }, 
               @{ModuleName = 'Az.AnalysisServices'; RequiredVersion = '1.1.4'; }, 
               @{ModuleName = 'Az.ApiManagement'; RequiredVersion = '4.0.2'; }, 
               @{ModuleName = 'Az.AppConfiguration'; RequiredVersion = '1.3.0'; }, 
               @{ModuleName = 'Az.ApplicationInsights'; RequiredVersion = '2.2.2'; }, 
               @{ModuleName = 'Az.ArcResourceBridge'; RequiredVersion = '1.0.0'; }, 
               @{ModuleName = 'Az.Attestation'; RequiredVersion = '2.0.0'; }, 
               @{ModuleName = 'Az.Automanage'; RequiredVersion = '1.0.0'; }, 
               @{ModuleName = 'Az.Automation'; RequiredVersion = '1.9.1'; }, 
               @{ModuleName = 'Az.Batch'; RequiredVersion = '3.5.0'; }, 
               @{ModuleName = 'Az.Billing'; RequiredVersion = '2.0.3'; }, 
               @{ModuleName = 'Az.Cdn'; RequiredVersion = '3.1.1'; }, 
               @{ModuleName = 'Az.CloudService'; RequiredVersion = '1.2.0'; }, 
               @{ModuleName = 'Az.CognitiveServices'; RequiredVersion = '1.14.0'; }, 
               @{ModuleName = 'Az.Compute'; RequiredVersion = '6.3.0'; }, 
               @{ModuleName = 'Az.ConfidentialLedger'; RequiredVersion = '1.0.0'; }, 
               @{ModuleName = 'Az.ContainerInstance'; RequiredVersion = '3.2.2'; }, 
               @{ModuleName = 'Az.ContainerRegistry'; RequiredVersion = '4.1.1'; }, 
               @{ModuleName = 'Az.CosmosDB'; RequiredVersion = '1.12.0'; }, 
               @{ModuleName = 'Az.DataBoxEdge'; RequiredVersion = '1.1.0'; }, 
               @{ModuleName = 'Az.Databricks'; RequiredVersion = '1.7.0'; }, 
               @{ModuleName = 'Az.DataFactory'; RequiredVersion = '1.17.0'; }, 
               @{ModuleName = 'Az.DataLakeAnalytics'; RequiredVersion = '1.0.3'; }, 
               @{ModuleName = 'Az.DataLakeStore'; RequiredVersion = '1.3.0'; }, 
               @{ModuleName = 'Az.DataProtection'; RequiredVersion = '2.1.0'; }, 
               @{ModuleName = 'Az.DataShare'; RequiredVersion = '1.0.1'; }, 
               @{ModuleName = 'Az.DesktopVirtualization'; RequiredVersion = '4.0.0'; }, 
               @{ModuleName = 'Az.DeploymentManager'; RequiredVersion = '1.1.0'; }, 
               @{ModuleName = 'Az.DevTestLabs'; RequiredVersion = '1.0.2'; }, 
               @{ModuleName = 'Az.Dns'; RequiredVersion = '1.1.3'; }, 
               @{ModuleName = 'Az.EventGrid'; RequiredVersion = '1.6.0'; }, 
               @{ModuleName = 'Az.EventHub'; RequiredVersion = '4.1.0'; }, 
               @{ModuleName = 'Az.FrontDoor'; RequiredVersion = '1.10.0'; }, 
               @{ModuleName = 'Az.Functions'; RequiredVersion = '4.0.6'; }, 
               @{ModuleName = 'Az.HDInsight'; RequiredVersion = '6.0.1'; }, 
               @{ModuleName = 'Az.HealthcareApis'; RequiredVersion = '2.0.0'; }, 
               @{ModuleName = 'Az.IotHub'; RequiredVersion = '2.7.5'; }, 
               @{ModuleName = 'Az.KeyVault'; RequiredVersion = '4.12.0'; }, 
               @{ModuleName = 'Az.Kusto'; RequiredVersion = '2.2.0'; }, 
               @{ModuleName = 'Az.LoadTesting'; RequiredVersion = '1.0.0'; }, 
               @{ModuleName = 'Az.LogicApp'; RequiredVersion = '1.5.0'; }, 
               @{ModuleName = 'Az.MachineLearning'; RequiredVersion = '1.1.3'; }, 
               @{ModuleName = 'Az.MachineLearningServices'; RequiredVersion = '1.0.0'; }, 
               @{ModuleName = 'Az.Maintenance'; RequiredVersion = '1.3.1'; }, 
               @{ModuleName = 'Az.ManagedServiceIdentity'; RequiredVersion = '1.1.1'; }, 
               @{ModuleName = 'Az.ManagedServices'; RequiredVersion = '3.0.0'; }, 
               @{ModuleName = 'Az.MarketplaceOrdering'; RequiredVersion = '2.0.0'; }, 
               @{ModuleName = 'Az.Media'; RequiredVersion = '1.1.2'; }, 
               @{ModuleName = 'Az.Migrate'; RequiredVersion = '2.2.0'; }, 
               @{ModuleName = 'Az.Monitor'; RequiredVersion = '4.6.0'; }, 
               @{ModuleName = 'Az.MySql'; RequiredVersion = '1.1.1'; }, 
               @{ModuleName = 'Az.Network'; RequiredVersion = '6.2.0'; }, 
               @{ModuleName = 'Az.NotificationHubs'; RequiredVersion = '1.1.2'; }, 
               @{ModuleName = 'Az.OperationalInsights'; RequiredVersion = '3.2.0'; }, 
               @{ModuleName = 'Az.PolicyInsights'; RequiredVersion = '1.6.3'; }, 
               @{ModuleName = 'Az.PostgreSql'; RequiredVersion = '1.1.0'; }, 
               @{ModuleName = 'Az.PowerBIEmbedded'; RequiredVersion = '1.2.1'; }, 
               @{ModuleName = 'Az.PrivateDns'; RequiredVersion = '1.0.4'; }, 
               @{ModuleName = 'Az.RecoveryServices'; RequiredVersion = '6.6.0'; }, 
               @{ModuleName = 'Az.RedisCache'; RequiredVersion = '1.8.0'; }, 
               @{ModuleName = 'Az.RedisEnterpriseCache'; RequiredVersion = '1.2.0'; }, 
               @{ModuleName = 'Az.Relay'; RequiredVersion = '2.0.0'; }, 
               @{ModuleName = 'Az.ResourceMover'; RequiredVersion = '1.2.0'; }, 
               @{ModuleName = 'Az.Resources'; RequiredVersion = '6.11.1'; }, 
               @{ModuleName = 'Az.Security'; RequiredVersion = '1.4.0'; }, 
               @{ModuleName = 'Az.SecurityInsights'; RequiredVersion = '3.1.0'; }, 
               @{ModuleName = 'Az.ServiceBus'; RequiredVersion = '3.0.0'; }, 
               @{ModuleName = 'Az.ServiceFabric'; RequiredVersion = '3.2.0'; }, 
               @{ModuleName = 'Az.SignalR'; RequiredVersion = '2.0.0'; }, 
               @{ModuleName = 'Az.Sql'; RequiredVersion = '4.10.0'; }, 
               @{ModuleName = 'Az.SqlVirtualMachine'; RequiredVersion = '2.1.0'; }, 
               @{ModuleName = 'Az.StackHCI'; RequiredVersion = '2.2.1'; }, 
               @{ModuleName = 'Az.Storage'; RequiredVersion = '5.10.1'; }, 
               @{ModuleName = 'Az.StorageMover'; RequiredVersion = '1.0.1'; }, 
               @{ModuleName = 'Az.StorageSync'; RequiredVersion = '2.0.0'; }, 
               @{ModuleName = 'Az.StreamAnalytics'; RequiredVersion = '2.0.0'; }, 
               @{ModuleName = 'Az.Support'; RequiredVersion = '1.0.0'; }, 
               @{ModuleName = 'Az.Synapse'; RequiredVersion = '3.0.3'; }, 
               @{ModuleName = 'Az.TrafficManager'; RequiredVersion = '1.2.1'; }, 
               @{ModuleName = 'Az.Websites'; RequiredVersion = '3.1.1'; })

# Assemblies that must be loaded prior to importing this module
# RequiredAssemblies = @()

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
# FormatsToProcess = @()

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = @()

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = @()

# Variables to export from this module
# VariablesToExport = @()

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = @()

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = 'Azure','ARM','ResourceManager','Linux','AzureAutomationNotSupported'

        # A URL to the license for this module.
        LicenseUri = 'https://aka.ms/azps-license'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/Azure/azure-powershell'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        ReleaseNotes = '10.4.1 - September 2023
Az.Resources
* Reverted commits that caused regression in ''Get-AzRoleAssignment''. [#22863]
'

        # Prerelease string of this module
        # Prerelease = ''

        # Flag to indicate whether the module requires explicit user acceptance for install/update/save
        # RequireLicenseAcceptance = $false

        # External dependent modules of this module
        # ExternalModuleDependencies = @()

    } # End of PSData hashtable

 } # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}

