param virtualNetworks_AZUESVNTADL01_name string = 'AZUESVNTADL01'
param networkSecurityGroups_NSGStorage_name string = 'NSGStorage'
param networkSecurityGroups_NSGIngestion_name string = 'NSGIngestion'
param networkSecurityGroups_NSGAnalytical_name string = 'NSGAnalytical'
param networkSecurityGroups_NSGModelServe_name string = 'NSGModelServe'
param networkSecurityGroups_NSGPreparation_name string = 'NSGPreparation'

resource networkSecurityGroups_NSGAnalytical_name_resource 'Microsoft.Network/networkSecurityGroups@2020-11-01' = {
  name: networkSecurityGroups_NSGAnalytical_name
  location: 'eastus'
  properties: {
    securityRules: [
      {
        name: 'HTTPSInBound'
        properties: {
          protocol: 'Tcp'
          sourcePortRange: '*'
          destinationPortRange: '443'
          sourceAddressPrefix: '*'
          destinationAddressPrefix: '*'
          access: 'Allow'
          priority: 100
          direction: 'Inbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'HTTPSOutBound'
        properties: {
          protocol: 'Tcp'
          sourcePortRange: '*'
          destinationPortRange: '443'
          sourceAddressPrefix: '*'
          destinationAddressPrefix: '*'
          access: 'Allow'
          priority: 110
          direction: 'Outbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
    ]
  }
}

resource networkSecurityGroups_NSGIngestion_name_resource 'Microsoft.Network/networkSecurityGroups@2020-11-01' = {
  name: networkSecurityGroups_NSGIngestion_name
  location: 'eastus'
  properties: {
    securityRules: [
      {
        name: 'SH-IR'
        properties: {
          protocol: 'Tcp'
          sourcePortRange: '*'
          destinationPortRange: '443'
          sourceAddressPrefix: '*'
          destinationAddressPrefix: '*'
          access: 'Allow'
          priority: 100
          direction: 'Inbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'HTTPS'
        properties: {
          protocol: 'Tcp'
          sourcePortRange: '*'
          destinationPortRange: '443'
          sourceAddressPrefix: '*'
          destinationAddressPrefix: '*'
          access: 'Allow'
          priority: 110
          direction: 'Outbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
    ]
  }
}

resource networkSecurityGroups_NSGModelServe_name_resource 'Microsoft.Network/networkSecurityGroups@2020-11-01' = {
  name: networkSecurityGroups_NSGModelServe_name
  location: 'eastus'
  properties: {
    securityRules: [
      {
        name: 'HTTPSInBound'
        properties: {
          protocol: 'Tcp'
          sourcePortRange: '*'
          destinationPortRange: '443'
          sourceAddressPrefix: '*'
          destinationAddressPrefix: '*'
          access: 'Allow'
          priority: 100
          direction: 'Inbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'HTTPSOutBound'
        properties: {
          protocol: 'Tcp'
          sourcePortRange: '*'
          destinationPortRange: '443'
          sourceAddressPrefix: '*'
          destinationAddressPrefix: '*'
          access: 'Allow'
          priority: 110
          direction: 'Outbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
    ]
  }
}

resource networkSecurityGroups_NSGPreparation_name_resource 'Microsoft.Network/networkSecurityGroups@2020-11-01' = {
  name: networkSecurityGroups_NSGPreparation_name
  location: 'eastus'
  properties: {
    securityRules: [
      {
        name: 'HTTPSInBound'
        properties: {
          protocol: 'Tcp'
          sourcePortRange: '*'
          destinationPortRange: '443'
          sourceAddressPrefix: '*'
          destinationAddressPrefix: '*'
          access: 'Allow'
          priority: 100
          direction: 'Inbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'HTTPSOutBound'
        properties: {
          protocol: 'Tcp'
          sourcePortRange: '*'
          destinationPortRange: '443'
          sourceAddressPrefix: '*'
          destinationAddressPrefix: '*'
          access: 'Allow'
          priority: 110
          direction: 'Outbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
    ]
  }
}

resource networkSecurityGroups_NSGStorage_name_resource 'Microsoft.Network/networkSecurityGroups@2020-11-01' = {
  name: networkSecurityGroups_NSGStorage_name
  location: 'eastus'
  properties: {
    securityRules: [
      {
        name: 'HTTPS'
        properties: {
          protocol: 'Tcp'
          sourcePortRange: '*'
          destinationPortRange: '443'
          sourceAddressPrefix: '*'
          destinationAddressPrefix: '*'
          access: 'Allow'
          priority: 100
          direction: 'Inbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'HTTPSOutBound'
        properties: {
          protocol: 'Tcp'
          sourcePortRange: '*'
          destinationPortRange: '443'
          sourceAddressPrefix: '*'
          destinationAddressPrefix: '*'
          access: 'Allow'
          priority: 110
          direction: 'Outbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
    ]
  }
}

resource networkSecurityGroups_NSGIngestion_name_HTTPS 'Microsoft.Network/networkSecurityGroups/securityRules@2020-11-01' = {
  parent: networkSecurityGroups_NSGIngestion_name_resource
  name: 'HTTPS'
  properties: {
    protocol: 'Tcp'
    sourcePortRange: '*'
    destinationPortRange: '443'
    sourceAddressPrefix: '*'
    destinationAddressPrefix: '*'
    access: 'Allow'
    priority: 110
    direction: 'Outbound'
    sourcePortRanges: []
    destinationPortRanges: []
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
}

resource networkSecurityGroups_NSGStorage_name_HTTPS 'Microsoft.Network/networkSecurityGroups/securityRules@2020-11-01' = {
  parent: networkSecurityGroups_NSGStorage_name_resource
  name: 'HTTPS'
  properties: {
    protocol: 'Tcp'
    sourcePortRange: '*'
    destinationPortRange: '443'
    sourceAddressPrefix: '*'
    destinationAddressPrefix: '*'
    access: 'Allow'
    priority: 100
    direction: 'Inbound'
    sourcePortRanges: []
    destinationPortRanges: []
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
}

resource networkSecurityGroups_NSGAnalytical_name_HTTPSInBound 'Microsoft.Network/networkSecurityGroups/securityRules@2020-11-01' = {
  parent: networkSecurityGroups_NSGAnalytical_name_resource
  name: 'HTTPSInBound'
  properties: {
    protocol: 'Tcp'
    sourcePortRange: '*'
    destinationPortRange: '443'
    sourceAddressPrefix: '*'
    destinationAddressPrefix: '*'
    access: 'Allow'
    priority: 100
    direction: 'Inbound'
    sourcePortRanges: []
    destinationPortRanges: []
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
}

resource networkSecurityGroups_NSGModelServe_name_HTTPSInBound 'Microsoft.Network/networkSecurityGroups/securityRules@2020-11-01' = {
  parent: networkSecurityGroups_NSGModelServe_name_resource
  name: 'HTTPSInBound'
  properties: {
    protocol: 'Tcp'
    sourcePortRange: '*'
    destinationPortRange: '443'
    sourceAddressPrefix: '*'
    destinationAddressPrefix: '*'
    access: 'Allow'
    priority: 100
    direction: 'Inbound'
    sourcePortRanges: []
    destinationPortRanges: []
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
}

resource networkSecurityGroups_NSGPreparation_name_HTTPSInBound 'Microsoft.Network/networkSecurityGroups/securityRules@2020-11-01' = {
  parent: networkSecurityGroups_NSGPreparation_name_resource
  name: 'HTTPSInBound'
  properties: {
    protocol: 'Tcp'
    sourcePortRange: '*'
    destinationPortRange: '443'
    sourceAddressPrefix: '*'
    destinationAddressPrefix: '*'
    access: 'Allow'
    priority: 100
    direction: 'Inbound'
    sourcePortRanges: []
    destinationPortRanges: []
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
}

resource networkSecurityGroups_NSGAnalytical_name_HTTPSOutBound 'Microsoft.Network/networkSecurityGroups/securityRules@2020-11-01' = {
  parent: networkSecurityGroups_NSGAnalytical_name_resource
  name: 'HTTPSOutBound'
  properties: {
    protocol: 'Tcp'
    sourcePortRange: '*'
    destinationPortRange: '443'
    sourceAddressPrefix: '*'
    destinationAddressPrefix: '*'
    access: 'Allow'
    priority: 110
    direction: 'Outbound'
    sourcePortRanges: []
    destinationPortRanges: []
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
}

resource networkSecurityGroups_NSGModelServe_name_HTTPSOutBound 'Microsoft.Network/networkSecurityGroups/securityRules@2020-11-01' = {
  parent: networkSecurityGroups_NSGModelServe_name_resource
  name: 'HTTPSOutBound'
  properties: {
    protocol: 'Tcp'
    sourcePortRange: '*'
    destinationPortRange: '443'
    sourceAddressPrefix: '*'
    destinationAddressPrefix: '*'
    access: 'Allow'
    priority: 110
    direction: 'Outbound'
    sourcePortRanges: []
    destinationPortRanges: []
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
}

resource networkSecurityGroups_NSGPreparation_name_HTTPSOutBound 'Microsoft.Network/networkSecurityGroups/securityRules@2020-11-01' = {
  parent: networkSecurityGroups_NSGPreparation_name_resource
  name: 'HTTPSOutBound'
  properties: {
    protocol: 'Tcp'
    sourcePortRange: '*'
    destinationPortRange: '443'
    sourceAddressPrefix: '*'
    destinationAddressPrefix: '*'
    access: 'Allow'
    priority: 110
    direction: 'Outbound'
    sourcePortRanges: []
    destinationPortRanges: []
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
}

resource networkSecurityGroups_NSGStorage_name_HTTPSOutBound 'Microsoft.Network/networkSecurityGroups/securityRules@2020-11-01' = {
  parent: networkSecurityGroups_NSGStorage_name_resource
  name: 'HTTPSOutBound'
  properties: {
    protocol: 'Tcp'
    sourcePortRange: '*'
    destinationPortRange: '443'
    sourceAddressPrefix: '*'
    destinationAddressPrefix: '*'
    access: 'Allow'
    priority: 110
    direction: 'Outbound'
    sourcePortRanges: []
    destinationPortRanges: []
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
}

resource networkSecurityGroups_NSGIngestion_name_SH_IR 'Microsoft.Network/networkSecurityGroups/securityRules@2020-11-01' = {
  parent: networkSecurityGroups_NSGIngestion_name_resource
  name: 'SH-IR'
  properties: {
    protocol: 'Tcp'
    sourcePortRange: '*'
    destinationPortRange: '443'
    sourceAddressPrefix: '*'
    destinationAddressPrefix: '*'
    access: 'Allow'
    priority: 100
    direction: 'Inbound'
    sourcePortRanges: []
    destinationPortRanges: []
    sourceAddressPrefixes: []
    destinationAddressPrefixes: []
  }
}

resource virtualNetworks_AZUESVNTADL01_name_AnalyticalSubnet 'Microsoft.Network/virtualNetworks/subnets@2020-11-01' = {
  parent: virtualNetworks_AZUESVNTADL01_name_resource
  name: 'AnalyticalSubnet'
  properties: {
    addressPrefix: '10.237.134.192/26'
    networkSecurityGroup: {
      id: networkSecurityGroups_NSGAnalytical_name_resource.id
    }
    delegations: []
    privateEndpointNetworkPolicies: 'Enabled'
    privateLinkServiceNetworkPolicies: 'Enabled'
  }
}

resource virtualNetworks_AZUESVNTADL01_name_IngestionSubnet 'Microsoft.Network/virtualNetworks/subnets@2020-11-01' = {
  parent: virtualNetworks_AZUESVNTADL01_name_resource
  name: 'IngestionSubnet'
  properties: {
    addressPrefix: '10.237.134.0/26'
    networkSecurityGroup: {
      id: networkSecurityGroups_NSGIngestion_name_resource.id
    }
    delegations: []
    privateEndpointNetworkPolicies: 'Enabled'
    privateLinkServiceNetworkPolicies: 'Enabled'
  }
}

resource virtualNetworks_AZUESVNTADL01_name_ModelServeSubnet 'Microsoft.Network/virtualNetworks/subnets@2020-11-01' = {
  parent: virtualNetworks_AZUESVNTADL01_name_resource
  name: 'ModelServeSubnet'
  properties: {
    addressPrefix: '10.237.135.0/24'
    networkSecurityGroup: {
      id: networkSecurityGroups_NSGModelServe_name_resource.id
    }
    delegations: []
    privateEndpointNetworkPolicies: 'Enabled'
    privateLinkServiceNetworkPolicies: 'Enabled'
  }
}

resource virtualNetworks_AZUESVNTADL01_name_PreparationSubnet 'Microsoft.Network/virtualNetworks/subnets@2020-11-01' = {
  parent: virtualNetworks_AZUESVNTADL01_name_resource
  name: 'PreparationSubnet'
  properties: {
    addressPrefix: '10.237.134.128/26'
    networkSecurityGroup: {
      id: networkSecurityGroups_NSGPreparation_name_resource.id
    }
    delegations: []
    privateEndpointNetworkPolicies: 'Enabled'
    privateLinkServiceNetworkPolicies: 'Enabled'
  }
}

resource virtualNetworks_AZUESVNTADL01_name_StorageSubnet 'Microsoft.Network/virtualNetworks/subnets@2020-11-01' = {
  parent: virtualNetworks_AZUESVNTADL01_name_resource
  name: 'StorageSubnet'
  properties: {
    addressPrefix: '10.237.134.64/26'
    networkSecurityGroup: {
      id: networkSecurityGroups_NSGStorage_name_resource.id
    }
    delegations: []
    privateEndpointNetworkPolicies: 'Enabled'
    privateLinkServiceNetworkPolicies: 'Enabled'
  }
}

resource virtualNetworks_AZUESVNTADL01_name_resource 'Microsoft.Network/virtualNetworks@2020-11-01' = {
  name: virtualNetworks_AZUESVNTADL01_name
  location: 'eastus'
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.237.134.0/23'
      ]
    }
    subnets: [
      {
        name: 'IngestionSubnet'
        properties: {
          addressPrefix: '10.237.134.0/26'
          networkSecurityGroup: {
            id: networkSecurityGroups_NSGIngestion_name_resource.id
          }
          delegations: []
          privateEndpointNetworkPolicies: 'Enabled'
          privateLinkServiceNetworkPolicies: 'Enabled'
        }
      }
      {
        name: 'StorageSubnet'
        properties: {
          addressPrefix: '10.237.134.64/26'
          networkSecurityGroup: {
            id: networkSecurityGroups_NSGStorage_name_resource.id
          }
          delegations: []
          privateEndpointNetworkPolicies: 'Enabled'
          privateLinkServiceNetworkPolicies: 'Enabled'
        }
      }
      {
        name: 'PreparationSubnet'
        properties: {
          addressPrefix: '10.237.134.128/26'
          networkSecurityGroup: {
            id: networkSecurityGroups_NSGPreparation_name_resource.id
          }
          delegations: []
          privateEndpointNetworkPolicies: 'Enabled'
          privateLinkServiceNetworkPolicies: 'Enabled'
        }
      }
      {
        name: 'AnalyticalSubnet'
        properties: {
          addressPrefix: '10.237.134.192/26'
          networkSecurityGroup: {
            id: networkSecurityGroups_NSGAnalytical_name_resource.id
          }
          delegations: []
          privateEndpointNetworkPolicies: 'Enabled'
          privateLinkServiceNetworkPolicies: 'Enabled'
        }
      }
      {
        name: 'ModelServeSubnet'
        properties: {
          addressPrefix: '10.237.135.0/24'
          networkSecurityGroup: {
            id: networkSecurityGroups_NSGModelServe_name_resource.id
          }
          delegations: []
          privateEndpointNetworkPolicies: 'Enabled'
          privateLinkServiceNetworkPolicies: 'Enabled'
        }
      }
    ]
    virtualNetworkPeerings: []
    enableDdosProtection: false
  }
}