# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DataLakeAnalytics
  module Models
    #
    # Data Lake Analytics firewall rule information
    #
    class FirewallRule < OptionalSubResource

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] the start IP address for the firewall rule. This can
      # be either ipv4 or ipv6. Start and End should be in the same protocol.
      attr_accessor :start_ip_address

      # @return [String] the end IP address for the firewall rule. This can be
      # either ipv4 or ipv6. Start and End should be in the same protocol.
      attr_accessor :end_ip_address


      #
      # Mapper for FirewallRule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'FirewallRule',
          type: {
            name: 'Composite',
            class_name: 'FirewallRule',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              start_ip_address: {
                required: true,
                serialized_name: 'properties.startIpAddress',
                type: {
                  name: 'String'
                }
              },
              end_ip_address: {
                required: true,
                serialized_name: 'properties.endIpAddress',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
