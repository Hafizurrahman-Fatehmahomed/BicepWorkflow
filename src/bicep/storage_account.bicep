@description('Write here the storage account name')
param StorageAccountName string = st $(uniqueString(resourceGroup().name))

@description('Storage account location')
param Location string = 'west europe'

resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: StorageAccountName
  location: Location
  kind: 'StorageV2'
  properties: {
    minimumTlsVersion: 'TLS1_2'
  }
  sku: {
    name: 'Premium_LRS'
  }
}
