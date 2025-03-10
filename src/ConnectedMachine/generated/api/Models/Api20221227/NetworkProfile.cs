// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.

namespace Microsoft.Azure.PowerShell.Cmdlets.ConnectedMachine.Models.Api20221227
{
    using static Microsoft.Azure.PowerShell.Cmdlets.ConnectedMachine.Runtime.Extensions;

    /// <summary>Describes the network information on this machine.</summary>
    public partial class NetworkProfile :
        Microsoft.Azure.PowerShell.Cmdlets.ConnectedMachine.Models.Api20221227.INetworkProfile,
        Microsoft.Azure.PowerShell.Cmdlets.ConnectedMachine.Models.Api20221227.INetworkProfileInternal
    {

        /// <summary>Backing field for <see cref="NetworkInterface" /> property.</summary>
        private Microsoft.Azure.PowerShell.Cmdlets.ConnectedMachine.Models.Api20221227.INetworkInterface[] _networkInterface;

        /// <summary>The list of network interfaces.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.ConnectedMachine.Origin(Microsoft.Azure.PowerShell.Cmdlets.ConnectedMachine.PropertyOrigin.Owned)]
        public Microsoft.Azure.PowerShell.Cmdlets.ConnectedMachine.Models.Api20221227.INetworkInterface[] NetworkInterface { get => this._networkInterface; set => this._networkInterface = value; }

        /// <summary>Creates an new <see cref="NetworkProfile" /> instance.</summary>
        public NetworkProfile()
        {

        }
    }
    /// Describes the network information on this machine.
    public partial interface INetworkProfile :
        Microsoft.Azure.PowerShell.Cmdlets.ConnectedMachine.Runtime.IJsonSerializable
    {
        /// <summary>The list of network interfaces.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.ConnectedMachine.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Description = @"The list of network interfaces.",
        SerializedName = @"networkInterfaces",
        PossibleTypes = new [] { typeof(Microsoft.Azure.PowerShell.Cmdlets.ConnectedMachine.Models.Api20221227.INetworkInterface) })]
        Microsoft.Azure.PowerShell.Cmdlets.ConnectedMachine.Models.Api20221227.INetworkInterface[] NetworkInterface { get; set; }

    }
    /// Describes the network information on this machine.
    internal partial interface INetworkProfileInternal

    {
        /// <summary>The list of network interfaces.</summary>
        Microsoft.Azure.PowerShell.Cmdlets.ConnectedMachine.Models.Api20221227.INetworkInterface[] NetworkInterface { get; set; }

    }
}