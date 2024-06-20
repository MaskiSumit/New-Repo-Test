@description'this is to specify the location of rthe Storage Account'
@minLength(05)
@maxLength(25)

param location string = 'westus'
@description ('This is to specify the storage name')
param storageName string = 'Sample-Storage'
