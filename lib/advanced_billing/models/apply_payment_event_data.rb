# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module AdvancedBilling
  # Example schema for an `apply_payment` event
  class ApplyPaymentEventData < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The payment memo
    # @return [String]
    attr_accessor :memo

    # The full, original amount of the payment transaction as a string in full
    # units. Incoming payments can be split amongst several invoices, which will
    # result in a `applied_amount` less than the `original_amount`. Example: A
    # $100.99 payment, of which $40.11 is applied to this invoice, will have an
    # `original_amount` of `"100.99"`.
    # @return [String]
    attr_accessor :original_amount

    # The amount of the payment applied to this invoice. Incoming payments can
    # be split amongst several invoices, which will result in a `applied_amount`
    # less than the `original_amount`. Example: A $100.99 payment, of which
    # $40.11 is applied to this invoice, will have an `applied_amount` of
    # `"40.11"`.
    # @return [String]
    attr_accessor :applied_amount

    # The time the payment was applied, in ISO 8601 format, i.e.
    # "2019-06-07T17:20:06Z"
    # @return [DateTime]
    attr_accessor :transaction_time

    # A nested data structure detailing the method of payment
    # @return [Object]
    attr_accessor :payment_method

    # The Chargify id of the original payment
    # @return [Integer]
    attr_accessor :transaction_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['memo'] = 'memo'
      @_hash['original_amount'] = 'original_amount'
      @_hash['applied_amount'] = 'applied_amount'
      @_hash['transaction_time'] = 'transaction_time'
      @_hash['payment_method'] = 'payment_method'
      @_hash['transaction_id'] = 'transaction_id'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        memo
        original_amount
        applied_amount
        transaction_time
        payment_method
        transaction_id
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(memo = SKIP, original_amount = SKIP, applied_amount = SKIP,
                   transaction_time = SKIP, payment_method = SKIP,
                   transaction_id = SKIP)
      @memo = memo unless memo == SKIP
      @original_amount = original_amount unless original_amount == SKIP
      @applied_amount = applied_amount unless applied_amount == SKIP
      @transaction_time = transaction_time unless transaction_time == SKIP
      @payment_method = payment_method unless payment_method == SKIP
      @transaction_id = transaction_id unless transaction_id == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      memo = hash.key?('memo') ? hash['memo'] : SKIP
      original_amount =
        hash.key?('original_amount') ? hash['original_amount'] : SKIP
      applied_amount =
        hash.key?('applied_amount') ? hash['applied_amount'] : SKIP
      transaction_time = if hash.key?('transaction_time')
                           (DateTimeHelper.from_rfc3339(hash['transaction_time']) if hash['transaction_time'])
                         else
                           SKIP
                         end
      payment_method = hash.key?('payment_method') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:ApplyPaymentEventDataPaymentMethod), hash['payment_method']
      ) : SKIP
      transaction_id =
        hash.key?('transaction_id') ? hash['transaction_id'] : SKIP

      # Create object from extracted values.
      ApplyPaymentEventData.new(memo,
                                original_amount,
                                applied_amount,
                                transaction_time,
                                payment_method,
                                transaction_id)
    end

    def to_custom_transaction_time
      DateTimeHelper.to_rfc3339(transaction_time)
    end

    # Validates an instance of the object from a given value.
    # @param [ApplyPaymentEventData | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
