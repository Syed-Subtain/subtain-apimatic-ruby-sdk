# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module AdvancedBilling
  # Example schema for an `remove_payment` event
  class RemovePaymentEventData < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Transaction ID of the original payment that was removed
    # @return [Integer]
    attr_accessor :transaction_id

    # Memo of the original payment
    # @return [String]
    attr_accessor :memo

    # Full amount of the original payment
    # @return [String]
    attr_accessor :original_amount

    # Applied amount of the original payment
    # @return [String]
    attr_accessor :applied_amount

    # Transaction time of the original payment, in ISO 8601 format, i.e.
    # "2019-06-07T17:20:06Z"
    # @return [DateTime]
    attr_accessor :transaction_time

    # A nested data structure detailing the method of payment
    # @return [Object]
    attr_accessor :payment_method

    # The flag that shows whether the original payment was a prepayment or not
    # @return [TrueClass | FalseClass]
    attr_accessor :prepayment

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['transaction_id'] = 'transaction_id'
      @_hash['memo'] = 'memo'
      @_hash['original_amount'] = 'original_amount'
      @_hash['applied_amount'] = 'applied_amount'
      @_hash['transaction_time'] = 'transaction_time'
      @_hash['payment_method'] = 'payment_method'
      @_hash['prepayment'] = 'prepayment'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        transaction_id
        memo
        original_amount
        applied_amount
        transaction_time
        payment_method
        prepayment
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(transaction_id = SKIP,
                   memo = SKIP,
                   original_amount = SKIP,
                   applied_amount = SKIP,
                   transaction_time = SKIP,
                   payment_method = SKIP,
                   prepayment = SKIP)
      @transaction_id = transaction_id unless transaction_id == SKIP
      @memo = memo unless memo == SKIP
      @original_amount = original_amount unless original_amount == SKIP
      @applied_amount = applied_amount unless applied_amount == SKIP
      @transaction_time = transaction_time unless transaction_time == SKIP
      @payment_method = payment_method unless payment_method == SKIP
      @prepayment = prepayment unless prepayment == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      transaction_id =
        hash.key?('transaction_id') ? hash['transaction_id'] : SKIP
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
        UnionTypeLookUp.get(:RemovePaymentEventDataPaymentMethod), hash['payment_method']
      ) : SKIP
      prepayment = hash.key?('prepayment') ? hash['prepayment'] : SKIP

      # Create object from extracted values.
      RemovePaymentEventData.new(transaction_id,
                                 memo,
                                 original_amount,
                                 applied_amount,
                                 transaction_time,
                                 payment_method,
                                 prepayment)
    end

    def to_transaction_time
      DateTimeHelper.to_rfc3339(transaction_time)
    end

    # Validates an instance of the object from a given value.
    # @param [RemovePaymentEventData | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
