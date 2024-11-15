# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # PrePayment Model.
  class PrePayment < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The subscription id for the prepayment account
    # @return [String]
    attr_accessor :subscription_id

    # The amount in cents of the prepayment that was created as a result of this
    # payment.
    # @return [String]
    attr_accessor :amount_in_cents

    # The total balance of the prepayment account for this subscription
    # including any prior prepayments
    # @return [String]
    attr_accessor :ending_balance_in_cents

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['subscription_id'] = 'subscription_id'
      @_hash['amount_in_cents'] = 'amount_in_cents'
      @_hash['ending_balance_in_cents'] = 'ending_balance_in_cents'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        subscription_id
        amount_in_cents
        ending_balance_in_cents
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(subscription_id = SKIP, amount_in_cents = SKIP,
                   ending_balance_in_cents = SKIP)
      @subscription_id = subscription_id unless subscription_id == SKIP
      @amount_in_cents = amount_in_cents unless amount_in_cents == SKIP
      @ending_balance_in_cents = ending_balance_in_cents unless ending_balance_in_cents == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      subscription_id =
        hash.key?('subscription_id') ? hash['subscription_id'] : SKIP
      amount_in_cents =
        hash.key?('amount_in_cents') ? hash['amount_in_cents'] : SKIP
      ending_balance_in_cents =
        hash.key?('ending_balance_in_cents') ? hash['ending_balance_in_cents'] : SKIP

      # Create object from extracted values.
      PrePayment.new(subscription_id,
                     amount_in_cents,
                     ending_balance_in_cents)
    end
  end
end
