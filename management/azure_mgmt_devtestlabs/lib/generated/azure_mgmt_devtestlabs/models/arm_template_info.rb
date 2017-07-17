# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DevTestLabs
  module Models
    #
    # Information about a generated ARM template.
    #
    class ArmTemplateInfo

      include MsRestAzure

      include MsRest::JSONable
      # @return The template's contents.
      attr_accessor :template

      # @return The parameters of the ARM template.
      attr_accessor :parameters


      #
      # Mapper for ArmTemplateInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ArmTemplateInfo',
          type: {
            name: 'Composite',
            class_name: 'ArmTemplateInfo',
            model_properties: {
              template: {
                required: false,
                serialized_name: 'template',
                type: {
                  name: 'Object'
                }
              },
              parameters: {
                required: false,
                serialized_name: 'parameters',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
