# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Graph
  module Models
    #
    # The response to an Active Directory object inquiry API request.
    #
    class GetObjectsResult

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<AADObject>] A collection of Active Directory objects.
      attr_accessor :value

      # @return [String] The URL to get the next set of results.
      attr_accessor :odatanext_link

      # return [Proc] with next page method call.
      attr_accessor :next_method

      #
      # Gets the rest of the items for the request, enabling auto-pagination.
      #
      # @return [Array<AADObject>] operation results.
      #
      def get_all_items
        items = @value
        page = self
        while page.odatanext_link != nil do
          page = page.get_next_page
          items.concat(page.value)
        end
        items
      end

      #
      # Gets the next page of results.
      #
      # @return [GetObjectsResult] with next page content.
      #
      def get_next_page
        response = @next_method.call(@odatanext_link).value! unless @next_method.nil?
        unless response.nil?
          @odatanext_link = response.body.odatanext_link
          @value = response.body.value
          self
        end
      end

      #
      # Mapper for GetObjectsResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'GetObjectsResult',
          type: {
            name: 'Composite',
            class_name: 'GetObjectsResult',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'AADObjectElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AADObject'
                      }
                  }
                }
              },
              odatanext_link: {
                required: false,
                serialized_name: 'odata\\.nextLink',
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
