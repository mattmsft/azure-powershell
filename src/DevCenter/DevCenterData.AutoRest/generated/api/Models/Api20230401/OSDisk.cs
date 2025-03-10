// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.

namespace Microsoft.Azure.PowerShell.Cmdlets.DevCenterdata.Models.Api20230401
{
    using static Microsoft.Azure.PowerShell.Cmdlets.DevCenterdata.Runtime.Extensions;

    /// <summary>Settings for the operating system disk.</summary>
    public partial class OSDisk :
        Microsoft.Azure.PowerShell.Cmdlets.DevCenterdata.Models.Api20230401.IOSDisk,
        Microsoft.Azure.PowerShell.Cmdlets.DevCenterdata.Models.Api20230401.IOSDiskInternal
    {

        /// <summary>Backing field for <see cref="DiskSizeGb" /> property.</summary>
        private int? _diskSizeGb;

        /// <summary>The size of the OS Disk in gigabytes.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.DevCenterdata.Origin(Microsoft.Azure.PowerShell.Cmdlets.DevCenterdata.PropertyOrigin.Owned)]
        public int? DiskSizeGb { get => this._diskSizeGb; }

        /// <summary>Internal Acessors for DiskSizeGb</summary>
        int? Microsoft.Azure.PowerShell.Cmdlets.DevCenterdata.Models.Api20230401.IOSDiskInternal.DiskSizeGb { get => this._diskSizeGb; set { {_diskSizeGb = value;} } }

        /// <summary>Creates an new <see cref="OSDisk" /> instance.</summary>
        public OSDisk()
        {

        }
    }
    /// Settings for the operating system disk.
    public partial interface IOSDisk :
        Microsoft.Azure.PowerShell.Cmdlets.DevCenterdata.Runtime.IJsonSerializable
    {
        /// <summary>The size of the OS Disk in gigabytes.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.DevCenterdata.Runtime.Info(
        Required = false,
        ReadOnly = true,
        Description = @"The size of the OS Disk in gigabytes.",
        SerializedName = @"diskSizeGB",
        PossibleTypes = new [] { typeof(int) })]
        int? DiskSizeGb { get;  }

    }
    /// Settings for the operating system disk.
    internal partial interface IOSDiskInternal

    {
        /// <summary>The size of the OS Disk in gigabytes.</summary>
        int? DiskSizeGb { get; set; }

    }
}