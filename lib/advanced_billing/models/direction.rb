# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # direction.
  class Direction
    DIRECTION = [
      # TODO: Write general description for ASC
      ASC = 'asc'.freeze,

      # TODO: Write general description for DESC
      DESC = 'desc'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      DIRECTION.include?(value)
    end
  end
end
