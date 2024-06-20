@description ('This is to specify the location of the Storage Account')

param location string = 'westus'
@maxLength(25)
@minLength(05)

@description ('This is to specify the storage name')

param storageaccountName string = 'Sample-Storage'

resource storageaccount 'Microsoft.Storage/storageAccounts@2023-05-01' = {
  name: storageaccountName
  location: location
  kind: 'StorageV2'
  sku: {
    name: 'Premium_LRS'
  }
}
