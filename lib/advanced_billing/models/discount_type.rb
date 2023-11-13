# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # Discount Type.
  class DiscountType
    DISCOUNT_TYPE = [
      # TODO: Write general description for AMOUNT
      AMOUNT = 'amount'.freeze,

      # TODO: Write general description for PERCENT
      PERCENT = 'percent'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      DISCOUNT_TYPE.include?(value)
    end
  end
end
