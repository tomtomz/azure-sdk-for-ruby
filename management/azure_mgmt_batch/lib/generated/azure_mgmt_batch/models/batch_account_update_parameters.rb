# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Batch
  module Models
    #
    # Parameters for updating an Azure Batch account.
    #
    class BatchAccountUpdateParameters

      include MsRestAzure

      include MsRest::JSONable
      # @return [Hash{String => String}] The user-specified tags associated
      # with the account.
      attr_accessor :tags

      # @return [AutoStorageBaseProperties] The properties related to the
      # auto-storage account.
      attr_accessor :auto_storage


      #
      # Mapper for BatchAccountUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'BatchAccountUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'BatchAccountUpdateParameters',
            model_properties: {
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              auto_storage: {
                required: false,
                serialized_name: 'properties.autoStorage',
                type: {
                  name: 'Composite',
                  class_name: 'AutoStorageBaseProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
