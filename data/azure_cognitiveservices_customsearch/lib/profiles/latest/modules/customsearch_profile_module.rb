# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_customsearch'

module Azure::CustomSearch::Profiles::Latest
  CustomInstance = Azure::CognitiveServices::CustomSearch::V1_0::CustomInstance

  module Models
    ResponseBase = Azure::CognitiveServices::CustomSearch::V1_0::Models::ResponseBase
    QueryContext = Azure::CognitiveServices::CustomSearch::V1_0::Models::QueryContext
    Query = Azure::CognitiveServices::CustomSearch::V1_0::Models::Query
    Error = Azure::CognitiveServices::CustomSearch::V1_0::Models::Error
    WebMetaTag = Azure::CognitiveServices::CustomSearch::V1_0::Models::WebMetaTag
    WebPage = Azure::CognitiveServices::CustomSearch::V1_0::Models::WebPage
    WebWebAnswer = Azure::CognitiveServices::CustomSearch::V1_0::Models::WebWebAnswer
    SearchResponse = Azure::CognitiveServices::CustomSearch::V1_0::Models::SearchResponse
    SearchResultsAnswer = Azure::CognitiveServices::CustomSearch::V1_0::Models::SearchResultsAnswer
    Identifiable = Azure::CognitiveServices::CustomSearch::V1_0::Models::Identifiable
    Response = Azure::CognitiveServices::CustomSearch::V1_0::Models::Response
    ErrorResponse = Azure::CognitiveServices::CustomSearch::V1_0::Models::ErrorResponse
    Answer = Azure::CognitiveServices::CustomSearch::V1_0::Models::Answer
    Thing = Azure::CognitiveServices::CustomSearch::V1_0::Models::Thing
    CreativeWork = Azure::CognitiveServices::CustomSearch::V1_0::Models::CreativeWork
    ErrorCode = Azure::CognitiveServices::CustomSearch::V1_0::Models::ErrorCode
    ErrorSubCode = Azure::CognitiveServices::CustomSearch::V1_0::Models::ErrorSubCode
    SafeSearch = Azure::CognitiveServices::CustomSearch::V1_0::Models::SafeSearch
    TextFormat = Azure::CognitiveServices::CustomSearch::V1_0::Models::TextFormat
  end

  #
  # CustomSearchDataClass
  #
  class CustomSearchDataClass
    attr_reader :custom_instance, :configurable, :base_url, :options, :model_classes

    def initialize(options = {})
      if options.is_a?(Hash) && options.length == 0
        @options = setup_default_options
      else
        @options = options
      end

      reset!(options)

      @configurable = self
      @base_url = options[:base_url].nil? ? nil:options[:base_url]
      @options = options[:options].nil? ? nil:options[:options]

      @client_0 = Azure::CognitiveServices::CustomSearch::V1_0::CustomSearchClient.new(configurable.credentials, base_url, options)
      if(@client_0.respond_to?(:subscription_id))
        @client_0.subscription_id = configurable.subscription_id
      end
      add_telemetry(@client_0)
      @custom_instance = @client_0.custom_instance

      @model_classes = ModelClasses.new
    end

    def add_telemetry(client)
      profile_information = 'Profiles/Latest/CustomSearch'
      client.add_user_agent_information(profile_information)
    end

    def method_missing(method, *args)
      if @client_0.respond_to?method
        @client_0.send(method, *args)
      else
        super
      end
    end

  end

  class ModelClasses
    def response_base
      Azure::CognitiveServices::CustomSearch::V1_0::Models::ResponseBase
    end
    def query_context
      Azure::CognitiveServices::CustomSearch::V1_0::Models::QueryContext
    end
    def query
      Azure::CognitiveServices::CustomSearch::V1_0::Models::Query
    end
    def error
      Azure::CognitiveServices::CustomSearch::V1_0::Models::Error
    end
    def web_meta_tag
      Azure::CognitiveServices::CustomSearch::V1_0::Models::WebMetaTag
    end
    def web_page
      Azure::CognitiveServices::CustomSearch::V1_0::Models::WebPage
    end
    def web_web_answer
      Azure::CognitiveServices::CustomSearch::V1_0::Models::WebWebAnswer
    end
    def search_response
      Azure::CognitiveServices::CustomSearch::V1_0::Models::SearchResponse
    end
    def search_results_answer
      Azure::CognitiveServices::CustomSearch::V1_0::Models::SearchResultsAnswer
    end
    def identifiable
      Azure::CognitiveServices::CustomSearch::V1_0::Models::Identifiable
    end
    def response
      Azure::CognitiveServices::CustomSearch::V1_0::Models::Response
    end
    def error_response
      Azure::CognitiveServices::CustomSearch::V1_0::Models::ErrorResponse
    end
    def answer
      Azure::CognitiveServices::CustomSearch::V1_0::Models::Answer
    end
    def thing
      Azure::CognitiveServices::CustomSearch::V1_0::Models::Thing
    end
    def creative_work
      Azure::CognitiveServices::CustomSearch::V1_0::Models::CreativeWork
    end
    def error_code
      Azure::CognitiveServices::CustomSearch::V1_0::Models::ErrorCode
    end
    def error_sub_code
      Azure::CognitiveServices::CustomSearch::V1_0::Models::ErrorSubCode
    end
    def safe_search
      Azure::CognitiveServices::CustomSearch::V1_0::Models::SafeSearch
    end
    def text_format
      Azure::CognitiveServices::CustomSearch::V1_0::Models::TextFormat
    end
  end
end
