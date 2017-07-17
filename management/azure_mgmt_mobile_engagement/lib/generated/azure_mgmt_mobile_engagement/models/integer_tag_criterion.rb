# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MobileEngagement
  module Models
    #
    # Target devices based on an integer tag value.
    #
    class IntegerTagCriterion < Criterion

      include MsRestAzure

      include MsRest::JSONable

      def initialize
        @type = "integer-tag"
      end

      attr_accessor :type

      # @return [String] The name of the custom tag.
      attr_accessor :name

      # @return [Integer] A custom integer value to match.
      attr_accessor :value

      # @return [AudienceOperators] comparison operator: `EQ` (equal to), `LT`
      # (less than), `GT` (greater than), `LE` (less than or equal to) or `GE`
      # (greater than or equal to). Possible values include: 'EQ', 'LT', 'GT',
      # 'LE', 'GE'
      attr_accessor :op


      #
      # Mapper for IntegerTagCriterion class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'integer-tag',
          type: {
            name: 'Composite',
            class_name: 'IntegerTagCriterion',
            model_properties: {
              type: {
                required: true,
                serialized_name: 'type',
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
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Number'
                }
              },
              op: {
                required: false,
                serialized_name: 'op',
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
