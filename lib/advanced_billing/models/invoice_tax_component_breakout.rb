# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # InvoiceTaxComponentBreakout Model.
  class InvoiceTaxComponentBreakout < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :tax_rule_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :percentage

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :country_code

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :subdivision_code

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['tax_rule_id'] = 'tax_rule_id'
      @_hash['percentage'] = 'percentage'
      @_hash['country_code'] = 'country_code'
      @_hash['subdivision_code'] = 'subdivision_code'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        tax_rule_id
        percentage
        country_code
        subdivision_code
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(tax_rule_id = SKIP, percentage = SKIP, country_code = SKIP,
                   subdivision_code = SKIP)
      @tax_rule_id = tax_rule_id unless tax_rule_id == SKIP
      @percentage = percentage unless percentage == SKIP
      @country_code = country_code unless country_code == SKIP
      @subdivision_code = subdivision_code unless subdivision_code == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      tax_rule_id = hash.key?('tax_rule_id') ? hash['tax_rule_id'] : SKIP
      percentage = hash.key?('percentage') ? hash['percentage'] : SKIP
      country_code = hash.key?('country_code') ? hash['country_code'] : SKIP
      subdivision_code =
        hash.key?('subdivision_code') ? hash['subdivision_code'] : SKIP

      # Create object from extracted values.
      InvoiceTaxComponentBreakout.new(tax_rule_id,
                                      percentage,
                                      country_code,
                                      subdivision_code)
    end

    # Validates an instance of the object from a given value.
    # @param [InvoiceTaxComponentBreakout | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
