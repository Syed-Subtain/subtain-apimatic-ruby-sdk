# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # List Components Price Points Include.
  class ListComponentsPricePointsInclude
    LIST_COMPONENTS_PRICE_POINTS_INCLUDE = [
      # TODO: Write general description for CURRENCY_PRICES
      CURRENCY_PRICES = 'currency_prices'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      LIST_COMPONENTS_PRICE_POINTS_INCLUDE.include?(value)
    end
  end
end
