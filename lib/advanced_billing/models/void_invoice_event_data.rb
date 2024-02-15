# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module AdvancedBilling
  # Example schema for an `void_invoice` event
  class VoidInvoiceEventData < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [CreditNote]
    attr_accessor :credit_note_attributes

    # The memo provided during invoice voiding.
    # @return [String]
    attr_accessor :memo

    # The amount of the void.
    # @return [String]
    attr_accessor :applied_amount

    # The time the refund was applied, in ISO 8601 format, i.e.
    # "2019-06-07T17:20:06Z"
    # @return [DateTime]
    attr_accessor :transaction_time

    # If true, the invoice is an advance invoice.
    # @return [TrueClass | FalseClass]
    attr_accessor :is_advance_invoice

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['credit_note_attributes'] = 'credit_note_attributes'
      @_hash['memo'] = 'memo'
      @_hash['applied_amount'] = 'applied_amount'
      @_hash['transaction_time'] = 'transaction_time'
      @_hash['is_advance_invoice'] = 'is_advance_invoice'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        credit_note_attributes
        memo
        applied_amount
        transaction_time
        is_advance_invoice
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(credit_note_attributes = SKIP,
                   memo = SKIP,
                   applied_amount = SKIP,
                   transaction_time = SKIP,
                   is_advance_invoice = SKIP)
      @credit_note_attributes = credit_note_attributes unless credit_note_attributes == SKIP
      @memo = memo unless memo == SKIP
      @applied_amount = applied_amount unless applied_amount == SKIP
      @transaction_time = transaction_time unless transaction_time == SKIP
      @is_advance_invoice = is_advance_invoice unless is_advance_invoice == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      credit_note_attributes = CreditNote.from_hash(hash['credit_note_attributes']) if
        hash['credit_note_attributes']
      memo = hash.key?('memo') ? hash['memo'] : SKIP
      applied_amount =
        hash.key?('applied_amount') ? hash['applied_amount'] : SKIP
      transaction_time = if hash.key?('transaction_time')
                           (DateTimeHelper.from_rfc3339(hash['transaction_time']) if hash['transaction_time'])
                         else
                           SKIP
                         end
      is_advance_invoice =
        hash.key?('is_advance_invoice') ? hash['is_advance_invoice'] : SKIP

      # Create object from extracted values.
      VoidInvoiceEventData.new(credit_note_attributes,
                               memo,
                               applied_amount,
                               transaction_time,
                               is_advance_invoice)
    end

    def to_custom_transaction_time
      DateTimeHelper.to_rfc3339(transaction_time)
    end

    # Validates an instance of the object from a given value.
    # @param [VoidInvoiceEventData | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
