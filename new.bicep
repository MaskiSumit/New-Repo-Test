param location string = 'eastus'
param vnetName string = 'Sample-VNET'
param addressPrefix string = '10.0.0.0/16'
param subnetPrefix string = '10.0.0.0/24'

resource virtualNetwork 'Microsoft.Network/virtualNetworks@2019-11-01' = {
  name: vnetName
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
        addressPrefix
      ]
    }
    subnets: [
      {
        name: 'Subnet-1'
        properties: {
          addressPrefix: subnetPrefix
        }
      }
    ]
  }
}

