# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # OveragePricing Model.
  class OveragePricing < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The identifier for the pricing scheme. See [Product
    # Components](https://help.chargify.com/products/product-components.html)
    # for an overview of pricing schemes.
    # @return [PricingScheme]
    attr_accessor :pricing_scheme

    # The identifier for the pricing scheme. See [Product
    # Components](https://help.chargify.com/products/product-components.html)
    # for an overview of pricing schemes.
    # @return [Array[Price]]
    attr_accessor :prices

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['pricing_scheme'] = 'pricing_scheme'
      @_hash['prices'] = 'prices'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        prices
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(pricing_scheme = nil,
                   prices = SKIP)
      @pricing_scheme = pricing_scheme
      @prices = prices unless prices == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      pricing_scheme = hash.key?('pricing_scheme') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:OveragePricingPricingScheme), hash['pricing_scheme']
      ) : nil
      # Parameter is an array, so we need to iterate through it
      prices = nil
      unless hash['prices'].nil?
        prices = []
        hash['prices'].each do |structure|
          prices << (Price.from_hash(structure) if structure)
        end
      end

      prices = SKIP unless hash.key?('prices')

      # Create object from extracted values.
      OveragePricing.new(pricing_scheme,
                         prices)
    end

    # Validates an instance of the object from a given value.
    # @param [OveragePricing | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return UnionTypeLookUp.get(:OveragePricingPricingScheme)
                              .validate(value.pricing_scheme)
      end

      return false unless value.instance_of? Hash

      UnionTypeLookUp.get(:OveragePricingPricingScheme)
                     .validate(value['pricing_scheme'])
    end
  end
end
