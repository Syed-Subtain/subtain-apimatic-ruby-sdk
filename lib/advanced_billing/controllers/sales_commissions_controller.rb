# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # SalesCommissionsController
  class SalesCommissionsController < BaseController
    # Endpoint returns sales rep list with details
    # ## Modified Authentication Process
    # The Sales Commission API differs from other Chargify API endpoints. This
    # resource is associated with the seller itself. Up to now all available
    # resources were at the level of the site, therefore creating the API Key
    # per site was a sufficient solution. To share resources at the seller
    # level, a new authentication method was introduced, which is user
    # authentication. Creating an API Key for a user is a required step to
    # correctly use the Sales Commission API, more details
    # [here](https://developers.chargify.com/docs/developer-docs/ZG9jOjMyNzk5NTg
    # 0-2020-04-20-new-api-authentication).
    # Access to the Sales Commission API endpoints is available to users with
    # financial access, where the seller has the Advanced Analytics component
    # enabled. For further information on getting access to Advanced Analytics
    # please contact Chargify support.
    # > Note: The request is at seller level, it means `<<subdomain>>` variable
    # will be replaced by `app`
    # @param [String] seller_id Required parameter: The Chargify id of your
    # seller account
    # @param [String] authorization Optional parameter: For authorization use
    # user API key. See details
    # [here](https://developers.chargify.com/docs/developer-docs/ZG9jOjMyNzk5NTg
    # 0-2020-04-20-new-api-authentication).
    # @param [TrueClass | FalseClass] live_mode Optional parameter: This
    # parameter indicates if records should be fetched from live mode sites.
    # Default value is true.
    # @param [Integer] page Optional parameter: Result records are organized in
    # pages. By default, the first page of results is displayed. The page
    # parameter specifies a page number of results to fetch. You can start
    # navigating through the pages to consume the results. You do this by
    # passing in a page parameter. Retrieve the next page by adding ?page=2 to
    # the query string. If there are no results to return, then an empty result
    # set will be returned. Use in query `page=1`.
    # @param [Integer] per_page Optional parameter: This parameter indicates how
    # many records to fetch in each request. Default value is 100.
    # @return [Array[ListSaleRepItem]] response from the API call
    def list_sales_reps(options = {})
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/sellers/{seller_id}/sales_reps.json',
                                     Server::DEFAULT)
                   .template_param(new_parameter(options['seller_id'], key: 'seller_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter(options['authorization'], key: 'Authorization'))
                   .query_param(new_parameter(options['live_mode'], key: 'live_mode'))
                   .query_param(new_parameter(options['page'], key: 'page'))
                   .query_param(new_parameter(options['per_page'], key: 'per_page'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                   .is_nullify404(true)
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ListSaleRepItem.method(:from_hash))
                   .is_response_array(true))
        .execute
    end

    # Endpoint returns sales rep and attached subscriptions details.
    # ## Modified Authentication Process
    # The Sales Commission API differs from other Chargify API endpoints. This
    # resource is associated with the seller itself. Up to now all available
    # resources were at the level of the site, therefore creating the API Key
    # per site was a sufficient solution. To share resources at the seller
    # level, a new authentication method was introduced, which is user
    # authentication. Creating an API Key for a user is a required step to
    # correctly use the Sales Commission API, more details
    # [here](https://developers.chargify.com/docs/developer-docs/ZG9jOjMyNzk5NTg
    # 0-2020-04-20-new-api-authentication).
    # Access to the Sales Commission API endpoints is available to users with
    # financial access, where the seller has the Advanced Analytics component
    # enabled. For further information on getting access to Advanced Analytics
    # please contact Chargify support.
    # > Note: The request is at seller level, it means `<<subdomain>>` variable
    # will be replaced by `app`
    # @param [String] seller_id Required parameter: The Chargify id of your
    # seller account
    # @param [String] sales_rep_id Required parameter: The Chargify id of sales
    # rep.
    # @param [String] authorization Optional parameter: For authorization use
    # user API key. See details
    # [here](https://developers.chargify.com/docs/developer-docs/ZG9jOjMyNzk5NTg
    # 0-2020-04-20-new-api-authentication).
    # @param [TrueClass | FalseClass] live_mode Optional parameter: This
    # parameter indicates if records should be fetched from live mode sites.
    # Default value is true.
    # @param [Integer] page Optional parameter: Result records are organized in
    # pages. By default, the first page of results is displayed. The page
    # parameter specifies a page number of results to fetch. You can start
    # navigating through the pages to consume the results. You do this by
    # passing in a page parameter. Retrieve the next page by adding ?page=2 to
    # the query string. If there are no results to return, then an empty result
    # set will be returned. Use in query `page=1`.
    # @param [Integer] per_page Optional parameter: This parameter indicates how
    # many records to fetch in each request. Default value is 100.
    # @return [SaleRep] response from the API call
    def read_sales_rep(seller_id,
                       sales_rep_id,
                       authorization: 'Bearer <<apiKey>>',
                       live_mode: nil,
                       page: 1,
                       per_page: 100)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/sellers/{seller_id}/sales_reps/{sales_rep_id}.json',
                                     Server::DEFAULT)
                   .template_param(new_parameter(seller_id, key: 'seller_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(sales_rep_id, key: 'sales_rep_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter(authorization, key: 'Authorization'))
                   .query_param(new_parameter(live_mode, key: 'live_mode'))
                   .query_param(new_parameter(page, key: 'page'))
                   .query_param(new_parameter(per_page, key: 'per_page'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                   .is_nullify404(true)
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(SaleRep.method(:from_hash)))
        .execute
    end

    # Endpoint returns subscriptions with associated sales reps
    # ## Modified Authentication Process
    # The Sales Commission API differs from other Chargify API endpoints. This
    # resource is associated with the seller itself. Up to now all available
    # resources were at the level of the site, therefore creating the API Key
    # per site was a sufficient solution. To share resources at the seller
    # level, a new authentication method was introduced, which is user
    # authentication. Creating an API Key for a user is a required step to
    # correctly use the Sales Commission API, more details
    # [here](https://developers.chargify.com/docs/developer-docs/ZG9jOjMyNzk5NTg
    # 0-2020-04-20-new-api-authentication).
    # Access to the Sales Commission API endpoints is available to users with
    # financial access, where the seller has the Advanced Analytics component
    # enabled. For further information on getting access to Advanced Analytics
    # please contact Chargify support.
    # > Note: The request is at seller level, it means `<<subdomain>>` variable
    # will be replaced by `app`
    # @param [String] seller_id Required parameter: The Chargify id of your
    # seller account
    # @param [String] authorization Optional parameter: For authorization use
    # user API key. See details
    # [here](https://developers.chargify.com/docs/developer-docs/ZG9jOjMyNzk5NTg
    # 0-2020-04-20-new-api-authentication).
    # @param [TrueClass | FalseClass] live_mode Optional parameter: This
    # parameter indicates if records should be fetched from live mode sites.
    # Default value is true.
    # @param [Integer] page Optional parameter: Result records are organized in
    # pages. By default, the first page of results is displayed. The page
    # parameter specifies a page number of results to fetch. You can start
    # navigating through the pages to consume the results. You do this by
    # passing in a page parameter. Retrieve the next page by adding ?page=2 to
    # the query string. If there are no results to return, then an empty result
    # set will be returned. Use in query `page=1`.
    # @param [Integer] per_page Optional parameter: This parameter indicates how
    # many records to fetch in each request. Default value is 100.
    # @return [Array[SaleRepSettings]] response from the API call
    def list_sales_commission_settings(options = {})
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/sellers/{seller_id}/sales_commission_settings.json',
                                     Server::DEFAULT)
                   .template_param(new_parameter(options['seller_id'], key: 'seller_id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter(options['authorization'], key: 'Authorization'))
                   .query_param(new_parameter(options['live_mode'], key: 'live_mode'))
                   .query_param(new_parameter(options['page'], key: 'page'))
                   .query_param(new_parameter(options['per_page'], key: 'per_page'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                   .is_nullify404(true)
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(SaleRepSettings.method(:from_hash))
                   .is_response_array(true))
        .execute
    end
  end
end
