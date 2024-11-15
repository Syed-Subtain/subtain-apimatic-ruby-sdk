# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # SubscriptionGroup Model.
  class SubscriptionGroup < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :customer_id

    # TODO: Write general description for this method
    # @return [SubscriptionGroupPaymentProfile]
    attr_accessor :payment_profile

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :payment_collection_method

    # TODO: Write general description for this method
    # @return [Array[Integer]]
    attr_accessor :subscription_ids

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :created_at

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['customer_id'] = 'customer_id'
      @_hash['payment_profile'] = 'payment_profile'
      @_hash['payment_collection_method'] = 'payment_collection_method'
      @_hash['subscription_ids'] = 'subscription_ids'
      @_hash['created_at'] = 'created_at'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        customer_id
        payment_profile
        payment_collection_method
        subscription_ids
        created_at
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(customer_id = SKIP, payment_profile = SKIP,
                   payment_collection_method = SKIP, subscription_ids = SKIP,
                   created_at = SKIP)
      @customer_id = customer_id unless customer_id == SKIP
      @payment_profile = payment_profile unless payment_profile == SKIP
      unless payment_collection_method == SKIP
        @payment_collection_method =
          payment_collection_method
      end
      @subscription_ids = subscription_ids unless subscription_ids == SKIP
      @created_at = created_at unless created_at == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      customer_id = hash.key?('customer_id') ? hash['customer_id'] : SKIP
      payment_profile = SubscriptionGroupPaymentProfile.from_hash(hash['payment_profile']) if
        hash['payment_profile']
      payment_collection_method =
        hash.key?('payment_collection_method') ? hash['payment_collection_method'] : SKIP
      subscription_ids =
        hash.key?('subscription_ids') ? hash['subscription_ids'] : SKIP
      created_at = hash.key?('created_at') ? hash['created_at'] : SKIP

      # Create object from extracted values.
      SubscriptionGroup.new(customer_id,
                            payment_profile,
                            payment_collection_method,
                            subscription_ids,
                            created_at)
    end
  end
end
