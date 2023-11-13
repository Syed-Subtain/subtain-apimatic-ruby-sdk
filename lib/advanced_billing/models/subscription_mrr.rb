# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # SubscriptionMRR Model.
  class SubscriptionMRR < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Float]
    attr_accessor :subscription_id

    # TODO: Write general description for this method
    # @return [Float]
    attr_accessor :mrr_amount_in_cents

    # TODO: Write general description for this method
    # @return [SubscriptionMRRBreakout]
    attr_accessor :breakouts

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['subscription_id'] = 'subscription_id'
      @_hash['mrr_amount_in_cents'] = 'mrr_amount_in_cents'
      @_hash['breakouts'] = 'breakouts'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        breakouts
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(subscription_id = nil,
                   mrr_amount_in_cents = nil,
                   breakouts = SKIP)
      @subscription_id = subscription_id
      @mrr_amount_in_cents = mrr_amount_in_cents
      @breakouts = breakouts unless breakouts == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      subscription_id =
        hash.key?('subscription_id') ? hash['subscription_id'] : nil
      mrr_amount_in_cents =
        hash.key?('mrr_amount_in_cents') ? hash['mrr_amount_in_cents'] : nil
      breakouts = SubscriptionMRRBreakout.from_hash(hash['breakouts']) if hash['breakouts']

      # Create object from extracted values.
      SubscriptionMRR.new(subscription_id,
                          mrr_amount_in_cents,
                          breakouts)
    end
  end
end
