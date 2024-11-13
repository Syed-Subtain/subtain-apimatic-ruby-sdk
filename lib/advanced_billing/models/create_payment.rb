# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # CreatePayment Model.
  class CreatePayment < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :amount

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :memo

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :payment_details

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :payment_method

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['amount'] = 'amount'
      @_hash['memo'] = 'memo'
      @_hash['payment_details'] = 'payment_details'
      @_hash['payment_method'] = 'payment_method'
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

    def initialize(amount = nil, memo = nil, payment_details = nil,
                   payment_method = nil)
      @amount = amount
      @memo = memo
      @payment_details = payment_details
      @payment_method = payment_method
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      amount = hash.key?('amount') ? hash['amount'] : nil
      memo = hash.key?('memo') ? hash['memo'] : nil
      payment_details =
        hash.key?('payment_details') ? hash['payment_details'] : nil
      payment_method =
        hash.key?('payment_method') ? hash['payment_method'] : nil

      # Create object from extracted values.
      CreatePayment.new(amount,
                        memo,
                        payment_details,
                        payment_method)
    end
  end
end
