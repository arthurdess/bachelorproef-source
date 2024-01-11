param siteName string
param location string
param hostingPlanName string
param alwaysOn bool
param ftpsState string
param sku string
param skuCode string
param linuxFxVersion string
param clientAffinityEnabled bool
param virtualNetworkSubnetId string = ''
param httpsOnly bool
param publicNetworkAccess string
param reserved bool
param zoneRedundant bool

var vnetId = virtualNetworkSubnetId == '' ? null : virtualNetworkSubnetId

resource site 'Microsoft.Web/sites@2018-11-01' = {
  name: siteName
  location: location
  tags: {}
  properties: {
    siteConfig: {
      appSettings: []
      linuxFxVersion: linuxFxVersion
      alwaysOn: alwaysOn
      ftpsState: ftpsState
    }
    serverFarmId: hostingPlan.id
    clientAffinityEnabled: clientAffinityEnabled
    virtualNetworkSubnetId: vnetId
    httpsOnly: httpsOnly
    publicNetworkAccess: publicNetworkAccess
  }
}

resource hostingPlan 'Microsoft.Web/serverfarms@2022-09-01' = {
  name: hostingPlanName
  location: location
  kind: 'app,linux'
  tags: {}
  properties: {
    reserved: reserved
    zoneRedundant: zoneRedundant
  }
  sku: {
    tier: sku
    name: skuCode
  }
}
