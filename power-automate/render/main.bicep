param name string
param location string

var unique = uniqueString(location)

resource renderAccount 'Microsoft.MixedReality/remoteRenderingAccounts@2021-03-01-preview' = {
  name: '${name}-${unique}'
  location: location
  identity: {
    type: 'SystemAssigned'
  }
  properties: {}
}
