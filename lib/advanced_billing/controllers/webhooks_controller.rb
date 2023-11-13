# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # WebhooksController
  class WebhooksController < BaseController
    # ## Webhooks Intro
    # The Webhooks API allows you to view a list of all webhooks and to
    # selectively resend individual or groups of webhooks. Webhooks will be sent
    # on endpoints specified by you. Endpoints can be added via API or Web UI.
    # There is also an option to enable / disable webhooks via API request.
    # We recommend that you review Chargify's webhook documentation located in
    # our help site. The following resources will help guide you on how to use
    # webhooks in Chargify, in addition to these webhook endpoints:
    # + [Adding/editing new
    # webhooks](https://maxio-chargify.zendesk.com/hc/en-us/articles/54044484503
    # 17#configure-webhook-url)
    # + [Webhooks introduction and delivery
    # information](https://maxio-chargify.zendesk.com/hc/en-us/articles/54055680
    # 68365#webhooks-introduction-0-0)
    # + [Main webhook
    # overview](https://maxio-chargify.zendesk.com/hc/en-us/articles/54053575096
    # 45-Webhooks-Reference#webhooks-reference-0-0)
    # + [Available webhooks and
    # payloads](https://maxio-chargify.zendesk.com/hc/en-us/articles/54053575096
    # 45-Webhooks-Reference#events)
    # ## List Webhooks for a Site
    # This method allows you to fetch data about webhooks. You can pass query
    # parameters if you want to filter webhooks.
    # @param [WebhookStatus] status Optional parameter: Webhooks with matching
    # status would be returned.
    # @param [String] since_date Optional parameter: Format YYYY-MM-DD. Returns
    # Webhooks with the created_at date greater than or equal to the one
    # specified.
    # @param [String] until_date Optional parameter: Format YYYY-MM-DD. Returns
    # Webhooks with the created_at date less than or equal to the one
    # specified.
    # @param [Integer] page Optional parameter: Result records are organized in
    # pages. By default, the first page of results is displayed. The page
    # parameter specifies a page number of results to fetch. You can start
    # navigating through the pages to consume the results. You do this by
    # passing in a page parameter. Retrieve the next page by adding ?page=2 to
    # the query string. If there are no results to return, then an empty result
    # set will be returned. Use in query `page=1`.
    # @param [Integer] per_page Optional parameter: This parameter indicates how
    # many records to fetch in each request. Default value is 20. The maximum
    # allowed values is 200; any per_page value over 200 will be changed to 200.
    # Use in query `per_page=200`.
    # @param [WebhookOrder] order Optional parameter: The order in which the
    # Webhooks are returned.
    # @param [Integer] subscription Optional parameter: The Chargify id of a
    # subscription you'd like to filter for
    # @return [Array[WebhookResponse]] response from the API call
    def list_webhooks(options = {})
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/webhooks.json',
                                     Server::DEFAULT)
                   .query_param(new_parameter(options['status'], key: 'status'))
                   .query_param(new_parameter(options['since_date'], key: 'since_date'))
                   .query_param(new_parameter(options['until_date'], key: 'until_date'))
                   .query_param(new_parameter(options['page'], key: 'page'))
                   .query_param(new_parameter(options['per_page'], key: 'per_page'))
                   .query_param(new_parameter(options['order'], key: 'order'))
                   .query_param(new_parameter(options['subscription'], key: 'subscription'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .is_nullify404(true)
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(WebhookResponse.method(:from_hash))
                   .is_response_array(true))
        .execute
    end

    # This method allows you to enable webhooks via API for your site
    # @param [EnableWebhooksRequest] body Optional parameter: Example:
    # @return [EnableWebhooksResponse] response from the API call
    def enable_webhooks(body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/webhooks/settings.json',
                                     Server::DEFAULT)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .is_nullify404(true)
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(EnableWebhooksResponse.method(:from_hash)))
        .execute
    end

    # Posting to the replay endpoint does not immediately resend the webhooks.
    # They are added to a queue and will be sent as soon as possible, depending
    # on available system resources.
    # You may submit an array of up to 1000 webhook IDs to replay in the
    # request.
    # @param [ReplayWebhooksRequest] body Optional parameter: Example:
    # @return [ReplayWebhooksResponse] response from the API call
    def replay_webhooks(body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/webhooks/replay.json',
                                     Server::DEFAULT)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .is_nullify404(true)
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ReplayWebhooksResponse.method(:from_hash)))
        .execute
    end

    # The Chargify API allows you to create an endpoint and assign a list of
    # webhooks subscriptions (events) to it.
    # You can check available events here.
    # [Event
    # keys](https://maxio-chargify.zendesk.com/hc/en-us/articles/5405357509645-W
    # ebhooks-Reference#example-payloads)
    # @param [UpdateEndpointRequest] body Optional parameter: Example:
    # @return [EndpointResponse] response from the API call
    def create_endpoint(body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/endpoints.json',
                                     Server::DEFAULT)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .is_nullify404(true)
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(EndpointResponse.method(:from_hash))
                   .local_error('422',
                                'Unprocessable Entity (WebDAV)',
                                ErrorListResponseException))
        .execute
    end

    # This method returns created endpoints for site.
    # @return [Array[Endpoint]] response from the API call
    def list_endpoints
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/endpoints.json',
                                     Server::DEFAULT)
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .is_nullify404(true)
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(Endpoint.method(:from_hash))
                   .is_response_array(true))
        .execute
    end

    # You can update an Endpoint via the API with a PUT request to the resource
    # endpoint.
    # You can change the `url` of your endpoint which consumes webhooks or list
    # of `webhook_subscriptions`.
    # Check available [Event
    # keys](https://maxio-chargify.zendesk.com/hc/en-us/articles/5404448450317-W
    # ebhooks#configure-webhook-url).
    # Always send a complete list of events which you want subscribe/watch.
    # Sending an PUT request for existing endpoint with empty list of
    # `webhook_subscriptions` will end with unsubscribe from all events.
    # If you want unsubscribe from specific event, just send a list of
    # `webhook_subscriptions` without the specific event key.
    # @param [Integer] endpoint_id Required parameter: The Chargify id for the
    # endpoint that should be updated
    # @param [UpdateEndpointRequest] body Optional parameter: Example:
    # @return [EndpointResponse] response from the API call
    def update_endpoint(endpoint_id,
                        body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/endpoints/{endpoint_id}.json',
                                     Server::DEFAULT)
                   .template_param(new_parameter(endpoint_id, key: 'endpoint_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .is_nullify404(true)
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(EndpointResponse.method(:from_hash))
                   .local_error('404',
                                'Not Found',
                                APIException)
                   .local_error('422',
                                'Unprocessable Entity (WebDAV)',
                                ErrorListResponseException))
        .execute
    end
  end
end
