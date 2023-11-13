# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # Interval Unit.
  class IntervalUnit
    INTERVAL_UNIT = [
      # TODO: Write general description for DAY
      DAY = 'day'.freeze,

      # TODO: Write general description for MONTH
      MONTH = 'month'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      INTERVAL_UNIT.include?(value)
    end
  end
end
