# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # ListInvoicesResponse Model.
  class ListInvoicesResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[Invoice]]
    attr_accessor :invoices

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['invoices'] = 'invoices'
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

    def initialize(invoices = nil)
      @invoices = invoices
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      invoices = nil
      unless hash['invoices'].nil?
        invoices = []
        hash['invoices'].each do |structure|
          invoices << (Invoice.from_hash(structure) if structure)
        end
      end

      invoices = nil unless hash.key?('invoices')

      # Create object from extracted values.
      ListInvoicesResponse.new(invoices)
    end
  end
end
