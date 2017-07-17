# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Monitor
  module Models
    #
    # The repeating times at which this profile begins. This element is not
    # used if the FixedDate element is used.
    #
    class Recurrence

      include MsRestAzure

      include MsRest::JSONable
      # @return [RecurrenceFrequency] the recurrence frequency. How often the
      # schedule profile should take effect. This value must be Week, meaning
      # each week will have the same set of profiles. Possible values include:
      # 'None', 'Second', 'Minute', 'Hour', 'Day', 'Week', 'Month', 'Year'
      attr_accessor :frequency

      # @return [RecurrentSchedule] the scheduling constraints for when the
      # profile begins.
      attr_accessor :schedule


      #
      # Mapper for Recurrence class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Recurrence',
          type: {
            name: 'Composite',
            class_name: 'Recurrence',
            model_properties: {
              frequency: {
                required: true,
                serialized_name: 'frequency',
                type: {
                  name: 'Enum',
                  module: 'RecurrenceFrequency'
                }
              },
              schedule: {
                required: true,
                serialized_name: 'schedule',
                type: {
                  name: 'Composite',
                  class_name: 'RecurrentSchedule'
                }
              }
            }
          }
        }
      end
    end
  end
end
