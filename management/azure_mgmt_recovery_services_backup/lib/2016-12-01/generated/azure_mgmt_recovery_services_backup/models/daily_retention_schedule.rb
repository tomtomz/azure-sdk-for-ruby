# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_12_01
  module Models
    #
    # Daily retention schedule.
    #
    class DailyRetentionSchedule

      include MsRestAzure

      # @return [Array<DateTime>] Retention times of retention policy.
      attr_accessor :retention_times

      # @return [RetentionDuration] Retention duration of retention Policy.
      attr_accessor :retention_duration


      #
      # Mapper for DailyRetentionSchedule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DailyRetentionSchedule',
          type: {
            name: 'Composite',
            class_name: 'DailyRetentionSchedule',
            model_properties: {
              retention_times: {
                client_side_validation: true,
                required: false,
                serialized_name: 'retentionTimes',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DateTimeElementType',
                      type: {
                        name: 'DateTime'
                      }
                  }
                }
              },
              retention_duration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'retentionDuration',
                type: {
                  name: 'Composite',
                  class_name: 'RetentionDuration'
                }
              }
            }
          }
        }
      end
    end
  end
end
