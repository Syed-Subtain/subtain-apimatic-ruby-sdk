# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # The process used to cancel the subscription, if the subscription has been
  # canceled. It is nil if the subscription's state is not canceled.
  class CancellationMethod
    CANCELLATION_METHOD = [
      # TODO: Write general description for MERCHANT_UI
      MERCHANT_UI = 'merchant_ui'.freeze,

      # TODO: Write general description for MERCHANT_API
      MERCHANT_API = 'merchant_api'.freeze,

      # TODO: Write general description for DUNNING
      DUNNING = 'dunning'.freeze,

      # TODO: Write general description for BILLING_PORTAL
      BILLING_PORTAL = 'billing_portal'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      CANCELLATION_METHOD.include?(value)
    end
  end
end
