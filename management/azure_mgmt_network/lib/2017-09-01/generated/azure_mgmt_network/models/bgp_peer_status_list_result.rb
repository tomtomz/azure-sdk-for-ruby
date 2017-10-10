# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network::Api_2017_09_01
  module Models
    #
    # Response for list BGP peer status API service call
    #
    class BgpPeerStatusListResult

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<BgpPeerStatus>] List of BGP peers
      attr_accessor :value


      #
      # Mapper for BgpPeerStatusListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'BgpPeerStatusListResult',
          type: {
            name: 'Composite',
            class_name: 'BgpPeerStatusListResult',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'BgpPeerStatusElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'BgpPeerStatus'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end