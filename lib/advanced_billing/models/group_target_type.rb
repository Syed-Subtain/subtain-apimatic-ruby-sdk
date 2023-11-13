# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # The type of object indicated by the id attribute.
  class GroupTargetType
    GROUP_TARGET_TYPE = [
      # TODO: Write general description for CUSTOMER
      CUSTOMER = 'customer'.freeze,

      # TODO: Write general description for SUBSCRIPTION
      SUBSCRIPTION = 'subscription'.freeze,

      # TODO: Write general description for ENUM_SELF
      ENUM_SELF = 'self'.freeze,

      # TODO: Write general description for PARENT
      PARENT = 'parent'.freeze,

      # TODO: Write general description for ELDEST
      ELDEST = 'eldest'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      GROUP_TARGET_TYPE.include?(value)
    end
  end
end
