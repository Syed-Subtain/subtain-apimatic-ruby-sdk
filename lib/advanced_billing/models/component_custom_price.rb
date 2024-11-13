# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # Create or update custom pricing unique to the subscription. Used in place of
  # `price_point_id`.
  class ComponentCustomPrice < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Omit for On/Off components
    # @return [PricingScheme]
    attr_accessor :pricing_scheme

    # On/off components only need one price bracket starting at 1
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
        pricing_scheme
        prices
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(pricing_scheme = SKIP, prices = SKIP)
      @pricing_scheme = pricing_scheme unless pricing_scheme == SKIP
      @prices = prices unless prices == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      pricing_scheme = hash.key?('pricing_scheme') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:ComponentCustomPricePricingScheme), hash['pricing_scheme']
      ) : SKIP
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
      ComponentCustomPrice.new(pricing_scheme,
                               prices)
    end

    # Validates an instance of the object from a given value.
    # @param [ComponentCustomPrice | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
