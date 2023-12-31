# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # Component Kind Path.
  class ComponentKindPath
    COMPONENT_KIND_PATH = [
      # TODO: Write general description for METERED_COMPONENTS
      METERED_COMPONENTS = 'metered_components'.freeze,

      # TODO: Write general description for QUANTITY_BASED_COMPONENTS
      QUANTITY_BASED_COMPONENTS = 'quantity_based_components'.freeze,

      # TODO: Write general description for ON_OFF_COMPONENTS
      ON_OFF_COMPONENTS = 'on_off_components'.freeze,

      # TODO: Write general description for PREPAID_USAGE_COMPONENTS
      PREPAID_USAGE_COMPONENTS = 'prepaid_usage_components'.freeze,

      # TODO: Write general description for EVENT_BASED_COMPONENTS
      EVENT_BASED_COMPONENTS = 'event_based_components'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      COMPONENT_KIND_PATH.include?(value)
    end
  end
end
