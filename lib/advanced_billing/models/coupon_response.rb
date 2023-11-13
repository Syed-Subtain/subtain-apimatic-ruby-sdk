# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # CouponResponse Model.
  class CouponResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Coupon]
    attr_accessor :coupon

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['coupon'] = 'coupon'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        coupon
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(coupon = SKIP)
      @coupon = coupon unless coupon == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      coupon = Coupon.from_hash(hash['coupon']) if hash['coupon']

      # Create object from extracted values.
      CouponResponse.new(coupon)
    end
  end
end
