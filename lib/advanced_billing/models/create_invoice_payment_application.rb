# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # CreateInvoicePaymentApplication Model.
  class CreateInvoicePaymentApplication < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Unique identifier for the invoice. It has the prefix "inv_" followed by
    # alphanumeric characters.
    # @return [String]
    attr_accessor :invoice_uid

    # Dollar amount of the invoice payment (eg. "10.50" => $10.50).
    # @return [String]
    attr_accessor :amount

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['invoice_uid'] = 'invoice_uid'
      @_hash['amount'] = 'amount'
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

    def initialize(invoice_uid = nil, amount = nil)
      @invoice_uid = invoice_uid
      @amount = amount
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      invoice_uid = hash.key?('invoice_uid') ? hash['invoice_uid'] : nil
      amount = hash.key?('amount') ? hash['amount'] : nil

      # Create object from extracted values.
      CreateInvoicePaymentApplication.new(invoice_uid,
                                          amount)
    end

    # Validates an instance of the object from a given value.
    # @param [CreateInvoicePaymentApplication | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          APIHelper.valid_type?(value.invoice_uid,
                                ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.amount,
                                  ->(val) { val.instance_of? String })
        )
      end

      return false unless value.instance_of? Hash

      (
        APIHelper.valid_type?(value['invoice_uid'],
                              ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['amount'],
                                ->(val) { val.instance_of? String })
      )
    end
  end
end
