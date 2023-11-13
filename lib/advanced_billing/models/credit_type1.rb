# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # The type of credit to be created when upgrading/downgrading. Defaults to the
  # component and then site setting if one is not provided. Available values:
  # `full`, `prorated`, `none`.
  class CreditType1
    CREDIT_TYPE1 = [
      # TODO: Write general description for FULL
      FULL = 'full'.freeze,

      # TODO: Write general description for PRORATED
      PRORATED = 'prorated'.freeze,

      # TODO: Write general description for NONE
      NONE = 'none'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      CREDIT_TYPE1.include?(value)
    end
  end
end
