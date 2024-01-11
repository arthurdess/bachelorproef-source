param location string
param networkInterfaceName string
param networkSecurityGroupName string
param networkSecurityGroupRules array
param subnetName string
param virtualNetworkName string
param addressPrefixes array
param subnets array
param publicIpAddressName string
param publicIpAddressType string
param publicIpAddressSku string
param pipDeleteOption string
param virtualMachineName string
param virtualMachineComputerName string
param osDiskType string
param osDiskDeleteOption string
param virtualMachineSize string
param nicDeleteOption string
param hibernationEnabled bool
param adminUsername string
param osType string
param osConfig object
param privateIPAllocationMethod string
param imagePublisher string
param imageOffer string
param imageSku string
param imageVersion string

@secure()
param adminPassword string
param virtualMachineZone string

var nsgId = resourceId(resourceGroup().name, 'Microsoft.Network/networkSecurityGroups', networkSecurityGroupName)
var vnetId = resourceId(resourceGroup().name, 'Microsoft.Network/virtualNetworks', virtualNetworkName)
var subnetRef = '${vnetId}/subnets/${subnetName}'
var publicIpRef = resourceId(resourceGroup().name, 'Microsoft.Network/publicIpAddresses', publicIpAddressName)
var ipconfigName = '${networkInterfaceName}-config1'

resource networkInterface 'Microsoft.Network/networkInterfaces@2022-11-01' = {
  name: networkInterfaceName
  location: location
  properties: {
    ipConfigurations: [
      {
        name: ipconfigName
        properties: {
          subnet: {
            id: subnetRef
          }
          privateIPAllocationMethod: privateIPAllocationMethod
          publicIPAddress: {
            id: publicIpRef
            properties: {
              deleteOption: pipDeleteOption
            }
          }
        }
      }
    ]
    networkSecurityGroup: {
      id: nsgId
    }
  }
  dependsOn: [
    networkSecurityGroup
    virtualNetwork
    publicIpAddress
  ]
}

resource networkSecurityGroup 'Microsoft.Network/networkSecurityGroups@2019-02-01' = {
  name: networkSecurityGroupName
  location: location
  properties: {
    securityRules: networkSecurityGroupRules
  }
}

resource virtualNetwork 'Microsoft.Network/virtualNetworks@2021-05-01' = {
  name: virtualNetworkName
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: addressPrefixes
    }
    subnets: subnets
  }
}

resource publicIpAddress 'Microsoft.Network/publicIpAddresses@2020-08-01' = {
  name: publicIpAddressName
  location: location
  properties: {
    publicIPAllocationMethod: publicIpAddressType
  }
  sku: {
    name: publicIpAddressSku
  }
  zones: [
    virtualMachineZone
  ]
}

resource virtualMachine 'Microsoft.Compute/virtualMachines@2022-11-01' = {
  name: virtualMachineName
  location: location
  properties: {
    hardwareProfile: {
      vmSize: virtualMachineSize
    }
    storageProfile: {
      osDisk: {
        createOption: 'fromImage'
        managedDisk: {
          storageAccountType: osDiskType
        }
        deleteOption: osDiskDeleteOption
      }
      imageReference: {
        publisher: imagePublisher
        offer: imageOffer
        sku: imageSku
        version: imageVersion
      }
    }
    networkProfile: {
      networkInterfaces: [
        {
          id: networkInterface.id
          properties: {
            deleteOption: nicDeleteOption
          }
        }
      ]
    }
    additionalCapabilities: {
      hibernationEnabled: hibernationEnabled
    }
    osProfile: {
      computerName: virtualMachineComputerName
      adminUsername: adminUsername
      adminPassword: adminPassword
      linuxConfiguration: (osType == 'linux'? osConfig : null)
      windowsConfiguration: (osType == 'windows'? osConfig : null)
    }
    diagnosticsProfile: {
      bootDiagnostics: {
        enabled: true
      }
    }
  }
  zones: [
    virtualMachineZone
  ]
}

output adminUsername string = adminUsername
