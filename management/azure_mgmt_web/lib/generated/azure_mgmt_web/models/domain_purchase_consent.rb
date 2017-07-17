# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Domain purchase consent object, representing acceptance of applicable
    # legal agreements.
    #
    class DomainPurchaseConsent

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<String>] List of applicable legal agreement keys. This
      # list can be retrieved using ListLegalAgreements API under
      # <code>TopLevelDomain</code> resource.
      attr_accessor :agreement_keys

      # @return [String] Client IP address.
      attr_accessor :agreed_by

      # @return [DateTime] Timestamp when the agreements were accepted.
      attr_accessor :agreed_at


      #
      # Mapper for DomainPurchaseConsent class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DomainPurchaseConsent',
          type: {
            name: 'Composite',
            class_name: 'DomainPurchaseConsent',
            model_properties: {
              agreement_keys: {
                required: false,
                serialized_name: 'agreementKeys',
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
              agreed_by: {
                required: false,
                serialized_name: 'agreedBy',
                type: {
                  name: 'String'
                }
              },
              agreed_at: {
                required: false,
                serialized_name: 'agreedAt',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
