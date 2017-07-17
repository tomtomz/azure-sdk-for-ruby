# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Details about app recovery operation.
    #
    class CsmSiteRecoveryEntity

      include MsRestAzure

      include MsRest::JSONable
      # @return [DateTime] Point in time in which the app recovery should be
      # attempted.
      attr_accessor :snapshot_time

      # @return [String] [Optional] Destination app name into which app should
      # be recovered. This is case when new app should be created instead.
      attr_accessor :site_name

      # @return [String] [Optional] Destination app slot name into which app
      # should be recovered.
      attr_accessor :slot_name


      #
      # Mapper for CsmSiteRecoveryEntity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CsmSiteRecoveryEntity',
          type: {
            name: 'Composite',
            class_name: 'CsmSiteRecoveryEntity',
            model_properties: {
              snapshot_time: {
                required: false,
                serialized_name: 'snapshotTime',
                type: {
                  name: 'DateTime'
                }
              },
              site_name: {
                required: false,
                serialized_name: 'siteName',
                type: {
                  name: 'String'
                }
              },
              slot_name: {
                required: false,
                serialized_name: 'slotName',
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
