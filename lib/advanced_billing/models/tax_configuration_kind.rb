# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # Tax Configuration Kind.
  class TaxConfigurationKind
    TAX_CONFIGURATION_KIND = [
      # TODO: Write general description for CUSTOM
      CUSTOM = 'custom'.freeze,

      # TODO: Write general description for ENUM_MANAGED_AVALARA
      ENUM_MANAGED_AVALARA = 'managed avalara'.freeze,

      # TODO: Write general description for ENUM_LINKED_AVALARA
      ENUM_LINKED_AVALARA = 'linked avalara'.freeze,

      # TODO: Write general description for ENUM_DIGITAL_RIVER
      ENUM_DIGITAL_RIVER = 'digital river'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      TAX_CONFIGURATION_KIND.include?(value)
    end
  end
end
