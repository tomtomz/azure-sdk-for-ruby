# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # Describes the properties of a Run Command.
    #
    class RunCommandDocument < RunCommandDocumentBase

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<String>] The script to be executed.
      attr_accessor :script

      # @return [Array<RunCommandParameterDefinition>] The parameters used by
      # the script.
      attr_accessor :parameters


      #
      # Mapper for RunCommandDocument class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RunCommandDocument',
          type: {
            name: 'Composite',
            class_name: 'RunCommandDocument',
            model_properties: {
              schema: {
                required: true,
                serialized_name: '$schema',
                type: {
                  name: 'String'
                }
              },
              id: {
                required: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              os_type: {
                required: true,
                serialized_name: 'osType',
                type: {
                  name: 'Enum',
                  module: 'OperatingSystemTypes'
                }
              },
              label: {
                required: true,
                serialized_name: 'label',
                type: {
                  name: 'String'
                }
              },
              description: {
                required: true,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              script: {
                required: true,
                serialized_name: 'script',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              parameters: {
                required: false,
                serialized_name: 'parameters',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'RunCommandParameterDefinitionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RunCommandParameterDefinition'
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
