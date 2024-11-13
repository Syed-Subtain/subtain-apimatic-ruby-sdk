# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # SubscriptionMRRBreakout Model.
  class SubscriptionMRRBreakout < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Float]
    attr_accessor :plan_amount_in_cents

    # TODO: Write general description for this method
    # @return [Float]
    attr_accessor :usage_amount_in_cents

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['plan_amount_in_cents'] = 'plan_amount_in_cents'
      @_hash['usage_amount_in_cents'] = 'usage_amount_in_cents'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(plan_amount_in_cents = nil, usage_amount_in_cents = nil)
      @plan_amount_in_cents = plan_amount_in_cents
      @usage_amount_in_cents = usage_amount_in_cents
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      plan_amount_in_cents =
        hash.key?('plan_amount_in_cents') ? hash['plan_amount_in_cents'] : nil
      usage_amount_in_cents =
        hash.key?('usage_amount_in_cents') ? hash['usage_amount_in_cents'] : nil

      # Create object from extracted values.
      SubscriptionMRRBreakout.new(plan_amount_in_cents,
                                  usage_amount_in_cents)
    end
  end
end
