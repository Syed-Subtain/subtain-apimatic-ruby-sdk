# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # CouponCurrency Model.
  class CouponCurrency < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :currency

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :price

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :coupon_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['currency'] = 'currency'
      @_hash['price'] = 'price'
      @_hash['coupon_id'] = 'coupon_id'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        currency
        price
        coupon_id
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(id = SKIP, currency = SKIP, price = SKIP, coupon_id = SKIP)
      @id = id unless id == SKIP
      @currency = currency unless currency == SKIP
      @price = price unless price == SKIP
      @coupon_id = coupon_id unless coupon_id == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      currency = hash.key?('currency') ? hash['currency'] : SKIP
      price = hash.key?('price') ? hash['price'] : SKIP
      coupon_id = hash.key?('coupon_id') ? hash['coupon_id'] : SKIP

      # Create object from extracted values.
      CouponCurrency.new(id,
                         currency,
                         price,
                         coupon_id)
    end
  end
end
