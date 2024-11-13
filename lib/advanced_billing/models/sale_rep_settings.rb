# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # SaleRepSettings Model.
  class SaleRepSettings < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :customer_name

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :subscription_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :site_link

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :site_name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :subscription_mrr

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :sales_rep_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :sales_rep_name

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['customer_name'] = 'customer_name'
      @_hash['subscription_id'] = 'subscription_id'
      @_hash['site_link'] = 'site_link'
      @_hash['site_name'] = 'site_name'
      @_hash['subscription_mrr'] = 'subscription_mrr'
      @_hash['sales_rep_id'] = 'sales_rep_id'
      @_hash['sales_rep_name'] = 'sales_rep_name'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        customer_name
        subscription_id
        site_link
        site_name
        subscription_mrr
        sales_rep_id
        sales_rep_name
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(customer_name = SKIP, subscription_id = SKIP,
                   site_link = SKIP, site_name = SKIP, subscription_mrr = SKIP,
                   sales_rep_id = SKIP, sales_rep_name = SKIP)
      @customer_name = customer_name unless customer_name == SKIP
      @subscription_id = subscription_id unless subscription_id == SKIP
      @site_link = site_link unless site_link == SKIP
      @site_name = site_name unless site_name == SKIP
      @subscription_mrr = subscription_mrr unless subscription_mrr == SKIP
      @sales_rep_id = sales_rep_id unless sales_rep_id == SKIP
      @sales_rep_name = sales_rep_name unless sales_rep_name == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      customer_name = hash.key?('customer_name') ? hash['customer_name'] : SKIP
      subscription_id =
        hash.key?('subscription_id') ? hash['subscription_id'] : SKIP
      site_link = hash.key?('site_link') ? hash['site_link'] : SKIP
      site_name = hash.key?('site_name') ? hash['site_name'] : SKIP
      subscription_mrr =
        hash.key?('subscription_mrr') ? hash['subscription_mrr'] : SKIP
      sales_rep_id = hash.key?('sales_rep_id') ? hash['sales_rep_id'] : SKIP
      sales_rep_name =
        hash.key?('sales_rep_name') ? hash['sales_rep_name'] : SKIP

      # Create object from extracted values.
      SaleRepSettings.new(customer_name,
                          subscription_id,
                          site_link,
                          site_name,
                          subscription_mrr,
                          sales_rep_id,
                          sales_rep_name)
    end
  end
end
