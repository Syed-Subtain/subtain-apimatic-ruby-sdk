# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # PaymentResponse Model.
  class PaymentResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[Payment]]
    attr_accessor :paid_invoices

    # TODO: Write general description for this method
    # @return [PrePayment]
    attr_accessor :prepayment

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['paid_invoices'] = 'paid_invoices'
      @_hash['prepayment'] = 'prepayment'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        paid_invoices
        prepayment
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(paid_invoices = SKIP, prepayment = SKIP)
      @paid_invoices = paid_invoices unless paid_invoices == SKIP
      @prepayment = prepayment unless prepayment == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      paid_invoices = nil
      unless hash['paid_invoices'].nil?
        paid_invoices = []
        hash['paid_invoices'].each do |structure|
          paid_invoices << (Payment.from_hash(structure) if structure)
        end
      end

      paid_invoices = SKIP unless hash.key?('paid_invoices')
      prepayment = PrePayment.from_hash(hash['prepayment']) if hash['prepayment']

      # Create object from extracted values.
      PaymentResponse.new(paid_invoices,
                          prepayment)
    end
  end
end
