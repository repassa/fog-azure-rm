module ApiStub
  module Requests
    module Network
      class VirtualNetworkGateway
        def self.create_virtual_network_gateway_response
          body = '{
            "name": "myvirtualgateway1",
            "location": "West US",
            "tags": { "key1": "value1" },
            "properties": {
              "gatewayType": "DynamicRouting",
              "gatewaySize": "Default",
              "bgpEnabled": true,
              "vpnClientAddressPool": [ "{vpnClientAddressPoolPrefix}" ],
              "defaultSites": [ "mysite1" ]
            }
          }'
          result = MsRestAzure::AzureOperationResponse.new(MsRest::HttpOperationRequest.new('', '', ''), Faraday::Response.new)
          result.body = Azure::ARM::Network::Models::VirtualNetworkGateway.deserialize_object(JSON.load(body))
          result
        end

        def self.list_virtual_network_gateway_response
          body = '{
            "value": [
              {
                "name": "myvirtualgateway1",
                "location": "West US",
                "tags": { "key1": "value1" },
                "properties": {
                  "gatewayType": "DynamicRouting",
                  "gatewaySize": "Default",
                  "bgpEnabled": true,
                  "vpnClientAddressPool": [ "{vpnClientAddressPoolPrefix}" ],
                  "defaultSites": [ "mysite1" ]
                }
              }
            ]
          }'
          result = MsRestAzure::AzureOperationResponse.new(MsRest::HttpOperationRequest.new('', '', ''), Faraday::Response.new)
          result.body = Azure::ARM::Network::Models::VirtualNetworkGatewayListResult.deserialize_object(JSON.load(body))
          result
        end

        def self.delete_virtual_network_gateway_response
          MsRestAzure::AzureOperationResponse.new(MsRest::HttpOperationRequest.new('', '', ''), Faraday::Response.new)
        end
      end
    end
  end
end
