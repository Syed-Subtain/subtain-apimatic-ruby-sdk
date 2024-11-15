# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # SubscriptionGroupPrepayment Model.
  class SubscriptionGroupPrepayment < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :amount

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :details

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :memo

    # TODO: Write general description for this method
    # @return [SubscriptionGroupPrepaymentMethod]
    attr_accessor :method

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['amount'] = 'amount'
      @_hash['details'] = 'details'
      @_hash['memo'] = 'memo'
      @_hash['method'] = 'method'
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

    def initialize(amount = nil, details = nil, memo = nil, method = nil)
      @amount = amount
      @details = details
      @memo = memo
      @method = method
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      amount = hash.key?('amount') ? hash['amount'] : nil
      details = hash.key?('details') ? hash['details'] : nil
      memo = hash.key?('memo') ? hash['memo'] : nil
      method = hash.key?('method') ? hash['method'] : nil

      # Create object from extracted values.
      SubscriptionGroupPrepayment.new(amount,
                                      details,
                                      memo,
                                      method)
    end
  end
end
