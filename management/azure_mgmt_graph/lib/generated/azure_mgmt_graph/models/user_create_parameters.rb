# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Graph
  module Models
    #
    # Request parameters for creating a new work or school account user.
    #
    class UserCreateParameters

      include MsRestAzure

      include MsRest::JSONable
      # @return [Boolean] Whether the account is enabled.
      attr_accessor :account_enabled

      # @return [String] The display name of the user.
      attr_accessor :display_name

      # @return [PasswordProfile] Password Profile
      attr_accessor :password_profile

      # @return [String] The user principal name (someuser@contoso.com). It
      # must contain one of the verified domains for the tenant.
      attr_accessor :user_principal_name

      # @return [String] The mail alias for the user.
      attr_accessor :mail_nickname

      # @return [String] This must be specified if you are using a federated
      # domain for the user's userPrincipalName (UPN) property when creating a
      # new user account. It is used to associate an on-premises Active
      # Directory user account with their Azure AD user object.
      attr_accessor :immutable_id

      # @return [String] A two letter country code (ISO standard 3166).
      # Required for users that will be assigned licenses due to legal
      # requirement to check for availability of services in countries.
      # Examples include: "US", "JP", and "GB".
      attr_accessor :usage_location


      #
      # Mapper for UserCreateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'UserCreateParameters',
          type: {
            name: 'Composite',
            class_name: 'UserCreateParameters',
            model_properties: {
              account_enabled: {
                required: true,
                serialized_name: 'accountEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              display_name: {
                required: true,
                serialized_name: 'displayName',
                type: {
                  name: 'String'
                }
              },
              password_profile: {
                required: true,
                serialized_name: 'passwordProfile',
                type: {
                  name: 'Composite',
                  class_name: 'PasswordProfile'
                }
              },
              user_principal_name: {
                required: true,
                serialized_name: 'userPrincipalName',
                type: {
                  name: 'String'
                }
              },
              mail_nickname: {
                required: true,
                serialized_name: 'mailNickname',
                type: {
                  name: 'String'
                }
              },
              immutable_id: {
                required: false,
                serialized_name: 'immutableId',
                type: {
                  name: 'String'
                }
              },
              usage_location: {
                required: false,
                serialized_name: 'usageLocation',
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
