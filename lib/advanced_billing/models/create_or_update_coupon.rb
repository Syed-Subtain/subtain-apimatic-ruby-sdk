# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # CreateOrUpdateCoupon Model.
  class CreateOrUpdateCoupon < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Object]
    attr_accessor :coupon

    # An object where the keys are product_ids and the values are booleans
    # indicating if the coupon should be applicable to the product
    # @return [Hash[String, TrueClass | FalseClass]]
    attr_accessor :restricted_products

    # An object where the keys are component_ids and the values are booleans
    # indicating if the coupon should be applicable to the component
    # @return [Hash[String, TrueClass | FalseClass]]
    attr_accessor :restricted_components

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['coupon'] = 'coupon'
      @_hash['restricted_products'] = 'restricted_products'
      @_hash['restricted_components'] = 'restricted_components'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        coupon
        restricted_products
        restricted_components
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(coupon = SKIP,
                   restricted_products = SKIP,
                   restricted_components = SKIP)
      @coupon = coupon unless coupon == SKIP
      @restricted_products = restricted_products unless restricted_products == SKIP
      @restricted_components = restricted_components unless restricted_components == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      coupon = hash.key?('coupon') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:CreateOrUpdateCouponCoupon), hash['coupon']
      ) : SKIP
      restricted_products =
        hash.key?('restricted_products') ? hash['restricted_products'] : SKIP
      restricted_components =
        hash.key?('restricted_components') ? hash['restricted_components'] : SKIP

      # Create object from extracted values.
      CreateOrUpdateCoupon.new(coupon,
                               restricted_products,
                               restricted_components)
    end

    # Validates an instance of the object from a given value.
    # @param [CreateOrUpdateCoupon | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
