# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Graph
  module Models
    #
    # The password profile associated with a user.
    #
    class PasswordProfile

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Password
      attr_accessor :password

      # @return [Boolean] Whether to force a password change on next login.
      attr_accessor :force_change_password_next_login


      #
      # Mapper for PasswordProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'PasswordProfile',
          type: {
            name: 'Composite',
            class_name: 'PasswordProfile',
            model_properties: {
              password: {
                required: true,
                serialized_name: 'password',
                type: {
                  name: 'String'
                }
              },
              force_change_password_next_login: {
                required: false,
                serialized_name: 'forceChangePasswordNextLogin',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
