# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # MultiInvoicePaymentResponse Model.
  class MultiInvoicePaymentResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [MultiInvoicePayment]
    attr_accessor :payment

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['payment'] = 'payment'
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

    def initialize(payment = nil)
      @payment = payment
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      payment = MultiInvoicePayment.from_hash(hash['payment']) if hash['payment']

      # Create object from extracted values.
      MultiInvoicePaymentResponse.new(payment)
    end
  end
end
