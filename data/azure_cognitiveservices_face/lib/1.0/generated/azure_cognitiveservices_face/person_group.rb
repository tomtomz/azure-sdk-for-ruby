# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Face::V1_0
  #
  # An API for face detection, verification, and identification.
  #
  class PersonGroup
    include MsRestAzure

    #
    # Creates and initializes a new instance of the PersonGroup class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [FaceClient] reference to the FaceClient
    attr_reader :client

    #
    # Create a new person group with specified personGroupId, name and
    # user-provided userData.
    #
    # @param person_group_id [String] User-provided personGroupId as a string.
    # @param name [String] Person group display name. The maximum length is 128.
    # @param user_data [String] User-provided data attached to the person group.
    # The size limit is 16KB.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def create(person_group_id, name = nil, user_data = nil, custom_headers = nil)
      response = create_async(person_group_id, name, user_data, custom_headers).value!
      nil
    end

    #
    # Create a new person group with specified personGroupId, name and
    # user-provided userData.
    #
    # @param person_group_id [String] User-provided personGroupId as a string.
    # @param name [String] Person group display name. The maximum length is 128.
    # @param user_data [String] User-provided data attached to the person group.
    # The size limit is 16KB.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_with_http_info(person_group_id, name = nil, user_data = nil, custom_headers = nil)
      create_async(person_group_id, name, user_data, custom_headers).value!
    end

    #
    # Create a new person group with specified personGroupId, name and
    # user-provided userData.
    #
    # @param person_group_id [String] User-provided personGroupId as a string.
    # @param name [String] Person group display name. The maximum length is 128.
    # @param user_data [String] User-provided data attached to the person group.
    # The size limit is 16KB.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_async(person_group_id, name = nil, user_data = nil, custom_headers = nil)
      fail ArgumentError, '@client.azure_region is nil' if @client.azure_region.nil?
      fail ArgumentError, 'person_group_id is nil' if person_group_id.nil?
      fail ArgumentError, "'person_group_id' should satisfy the constraint - 'MaxLength': '64'" if !person_group_id.nil? && person_group_id.length > 64
      fail ArgumentError, "'person_group_id' should satisfy the constraint - 'Pattern': '^[a-z0-9-_]+$'" if !person_group_id.nil? && person_group_id.match(Regexp.new('^^[a-z0-9-_]+$$')).nil?
      fail ArgumentError, "'name' should satisfy the constraint - 'MaxLength': '128'" if !name.nil? && name.length > 128
      fail ArgumentError, "'user_data' should satisfy the constraint - 'MaxLength': '16384'" if !user_data.nil? && user_data.length > 16384

      body = CreatePersonGroupRequest.new
      unless name.nil? && user_data.nil?
        body.name = name
        body.user_data = user_data
      end

      request_headers = {}

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::CognitiveServices::Face::V1_0::Models::CreatePersonGroupRequest.mapper()
      request_content = @client.serialize(request_mapper,  body)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'persongroups/{personGroupId}'

      request_url = @base_url || @client.base_url
    request_url = request_url.gsub('{AzureRegion}', @client.azure_region)

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'personGroupId' => person_group_id},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Delete an existing person group. Persisted face images of all people in the
    # person group will also be deleted.
    #
    # @param person_group_id [String] The personGroupId of the person group to be
    # deleted.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(person_group_id, custom_headers = nil)
      response = delete_async(person_group_id, custom_headers).value!
      nil
    end

    #
    # Delete an existing person group. Persisted face images of all people in the
    # person group will also be deleted.
    #
    # @param person_group_id [String] The personGroupId of the person group to be
    # deleted.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(person_group_id, custom_headers = nil)
      delete_async(person_group_id, custom_headers).value!
    end

    #
    # Delete an existing person group. Persisted face images of all people in the
    # person group will also be deleted.
    #
    # @param person_group_id [String] The personGroupId of the person group to be
    # deleted.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(person_group_id, custom_headers = nil)
      fail ArgumentError, '@client.azure_region is nil' if @client.azure_region.nil?
      fail ArgumentError, 'person_group_id is nil' if person_group_id.nil?
      fail ArgumentError, "'person_group_id' should satisfy the constraint - 'MaxLength': '64'" if !person_group_id.nil? && person_group_id.length > 64
      fail ArgumentError, "'person_group_id' should satisfy the constraint - 'Pattern': '^[a-z0-9-_]+$'" if !person_group_id.nil? && person_group_id.match(Regexp.new('^^[a-z0-9-_]+$$')).nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'persongroups/{personGroupId}'

      request_url = @base_url || @client.base_url
    request_url = request_url.gsub('{AzureRegion}', @client.azure_region)

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'personGroupId' => person_group_id},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Retrieve the information of a person group, including its name and userData.
    #
    # @param person_group_id [String] personGroupId of the target person group.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PersonGroupResult] operation results.
    #
    def get(person_group_id, custom_headers = nil)
      response = get_async(person_group_id, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Retrieve the information of a person group, including its name and userData.
    #
    # @param person_group_id [String] personGroupId of the target person group.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(person_group_id, custom_headers = nil)
      get_async(person_group_id, custom_headers).value!
    end

    #
    # Retrieve the information of a person group, including its name and userData.
    #
    # @param person_group_id [String] personGroupId of the target person group.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(person_group_id, custom_headers = nil)
      fail ArgumentError, '@client.azure_region is nil' if @client.azure_region.nil?
      fail ArgumentError, 'person_group_id is nil' if person_group_id.nil?
      fail ArgumentError, "'person_group_id' should satisfy the constraint - 'MaxLength': '64'" if !person_group_id.nil? && person_group_id.length > 64
      fail ArgumentError, "'person_group_id' should satisfy the constraint - 'Pattern': '^[a-z0-9-_]+$'" if !person_group_id.nil? && person_group_id.match(Regexp.new('^^[a-z0-9-_]+$$')).nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'persongroups/{personGroupId}'

      request_url = @base_url || @client.base_url
    request_url = request_url.gsub('{AzureRegion}', @client.azure_region)

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'personGroupId' => person_group_id},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::CognitiveServices::Face::V1_0::Models::PersonGroupResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Update an existing person group's display name and userData. The properties
    # which does not appear in request body will not be updated.
    #
    # @param person_group_id [String] personGroupId of the person group to be
    # updated.
    # @param name [String] Person group display name. The maximum length is 128.
    # @param user_data [String] User-provided data attached to the person group.
    # The size limit is 16KB.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def update(person_group_id, name = nil, user_data = nil, custom_headers = nil)
      response = update_async(person_group_id, name, user_data, custom_headers).value!
      nil
    end

    #
    # Update an existing person group's display name and userData. The properties
    # which does not appear in request body will not be updated.
    #
    # @param person_group_id [String] personGroupId of the person group to be
    # updated.
    # @param name [String] Person group display name. The maximum length is 128.
    # @param user_data [String] User-provided data attached to the person group.
    # The size limit is 16KB.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def update_with_http_info(person_group_id, name = nil, user_data = nil, custom_headers = nil)
      update_async(person_group_id, name, user_data, custom_headers).value!
    end

    #
    # Update an existing person group's display name and userData. The properties
    # which does not appear in request body will not be updated.
    #
    # @param person_group_id [String] personGroupId of the person group to be
    # updated.
    # @param name [String] Person group display name. The maximum length is 128.
    # @param user_data [String] User-provided data attached to the person group.
    # The size limit is 16KB.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def update_async(person_group_id, name = nil, user_data = nil, custom_headers = nil)
      fail ArgumentError, '@client.azure_region is nil' if @client.azure_region.nil?
      fail ArgumentError, 'person_group_id is nil' if person_group_id.nil?
      fail ArgumentError, "'person_group_id' should satisfy the constraint - 'MaxLength': '64'" if !person_group_id.nil? && person_group_id.length > 64
      fail ArgumentError, "'person_group_id' should satisfy the constraint - 'Pattern': '^[a-z0-9-_]+$'" if !person_group_id.nil? && person_group_id.match(Regexp.new('^^[a-z0-9-_]+$$')).nil?
      fail ArgumentError, "'name' should satisfy the constraint - 'MaxLength': '128'" if !name.nil? && name.length > 128
      fail ArgumentError, "'user_data' should satisfy the constraint - 'MaxLength': '16384'" if !user_data.nil? && user_data.length > 16384

      body = CreatePersonGroupRequest.new
      unless name.nil? && user_data.nil?
        body.name = name
        body.user_data = user_data
      end

      request_headers = {}

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::CognitiveServices::Face::V1_0::Models::CreatePersonGroupRequest.mapper()
      request_content = @client.serialize(request_mapper,  body)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'persongroups/{personGroupId}'

      request_url = @base_url || @client.base_url
    request_url = request_url.gsub('{AzureRegion}', @client.azure_region)

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'personGroupId' => person_group_id},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:patch, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Retrieve the training status of a person group (completed or ongoing).
    #
    # @param person_group_id [String] personGroupId of target person group.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [TrainingStatus] operation results.
    #
    def get_training_status(person_group_id, custom_headers = nil)
      response = get_training_status_async(person_group_id, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Retrieve the training status of a person group (completed or ongoing).
    #
    # @param person_group_id [String] personGroupId of target person group.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_training_status_with_http_info(person_group_id, custom_headers = nil)
      get_training_status_async(person_group_id, custom_headers).value!
    end

    #
    # Retrieve the training status of a person group (completed or ongoing).
    #
    # @param person_group_id [String] personGroupId of target person group.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_training_status_async(person_group_id, custom_headers = nil)
      fail ArgumentError, '@client.azure_region is nil' if @client.azure_region.nil?
      fail ArgumentError, 'person_group_id is nil' if person_group_id.nil?
      fail ArgumentError, "'person_group_id' should satisfy the constraint - 'MaxLength': '64'" if !person_group_id.nil? && person_group_id.length > 64
      fail ArgumentError, "'person_group_id' should satisfy the constraint - 'Pattern': '^[a-z0-9-_]+$'" if !person_group_id.nil? && person_group_id.match(Regexp.new('^^[a-z0-9-_]+$$')).nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'persongroups/{personGroupId}/training'

      request_url = @base_url || @client.base_url
    request_url = request_url.gsub('{AzureRegion}', @client.azure_region)

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'personGroupId' => person_group_id},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::CognitiveServices::Face::V1_0::Models::TrainingStatus.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # List person groups and their information.
    #
    # @param start [String] List person groups from the least personGroupId greater
    # than the "start".
    # @param top [Integer] The number of person groups to list.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array] operation results.
    #
    def list(start = nil, top = 1000, custom_headers = nil)
      response = list_async(start, top, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # List person groups and their information.
    #
    # @param start [String] List person groups from the least personGroupId greater
    # than the "start".
    # @param top [Integer] The number of person groups to list.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(start = nil, top = 1000, custom_headers = nil)
      list_async(start, top, custom_headers).value!
    end

    #
    # List person groups and their information.
    #
    # @param start [String] List person groups from the least personGroupId greater
    # than the "start".
    # @param top [Integer] The number of person groups to list.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(start = nil, top = 1000, custom_headers = nil)
      fail ArgumentError, '@client.azure_region is nil' if @client.azure_region.nil?
      fail ArgumentError, "'start' should satisfy the constraint - 'MaxLength': '64'" if !start.nil? && start.length > 64
      fail ArgumentError, "'top' should satisfy the constraint - 'InclusiveMaximum': '1000'" if !top.nil? && top > 1000
      fail ArgumentError, "'top' should satisfy the constraint - 'InclusiveMinimum': '1'" if !top.nil? && top < 1


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'persongroups'

      request_url = @base_url || @client.base_url
    request_url = request_url.gsub('{AzureRegion}', @client.azure_region)

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          query_params: {'start' => start,'top' => top},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = {
              client_side_validation: true,
              required: false,
              serialized_name: 'parsed_response',
              type: {
                name: 'Sequence',
                element: {
                    client_side_validation: true,
                    required: false,
                    serialized_name: 'PersonGroupResultElementType',
                    type: {
                      name: 'Composite',
                      class_name: 'PersonGroupResult'
                    }
                }
              }
            }
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Queue a person group training task, the training task may not be started
    # immediately.
    #
    # @param person_group_id [String] Target person group to be trained.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def train(person_group_id, custom_headers = nil)
      response = train_async(person_group_id, custom_headers).value!
      nil
    end

    #
    # Queue a person group training task, the training task may not be started
    # immediately.
    #
    # @param person_group_id [String] Target person group to be trained.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def train_with_http_info(person_group_id, custom_headers = nil)
      train_async(person_group_id, custom_headers).value!
    end

    #
    # Queue a person group training task, the training task may not be started
    # immediately.
    #
    # @param person_group_id [String] Target person group to be trained.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def train_async(person_group_id, custom_headers = nil)
      fail ArgumentError, '@client.azure_region is nil' if @client.azure_region.nil?
      fail ArgumentError, 'person_group_id is nil' if person_group_id.nil?
      fail ArgumentError, "'person_group_id' should satisfy the constraint - 'MaxLength': '64'" if !person_group_id.nil? && person_group_id.length > 64
      fail ArgumentError, "'person_group_id' should satisfy the constraint - 'Pattern': '^[a-z0-9-_]+$'" if !person_group_id.nil? && person_group_id.match(Regexp.new('^^[a-z0-9-_]+$$')).nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'persongroups/{personGroupId}/train'

      request_url = @base_url || @client.base_url
    request_url = request_url.gsub('{AzureRegion}', @client.azure_region)

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'personGroupId' => person_group_id},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 202
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

  end
end