# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # Event Type.
  class EventType
    EVENT_TYPE = [
      # TODO: Write general description for ACCOUNT_TRANSACTION_CHANGED
      ACCOUNT_TRANSACTION_CHANGED = 'account_transaction_changed'.freeze,

      # TODO: Write general description for BILLING_DATE_CHANGE
      BILLING_DATE_CHANGE = 'billing_date_change'.freeze,

      # TODO: Write general description for COMPONENT_ALLOCATION_CHANGE
      COMPONENT_ALLOCATION_CHANGE = 'component_allocation_change'.freeze,

      # TODO: Write general description for CUSTOMER_UPDATE
      CUSTOMER_UPDATE = 'customer_update'.freeze,

      # TODO: Write general description for CUSTOMER_CREATE
      CUSTOMER_CREATE = 'customer_create'.freeze,

      # TODO: Write general description for DUNNING_STEP_REACHED
      DUNNING_STEP_REACHED = 'dunning_step_reached'.freeze,

      # TODO: Write general description for EXPIRATION_DATE_CHANGE
      EXPIRATION_DATE_CHANGE = 'expiration_date_change'.freeze,

      # TODO: Write general description for EXPIRING_CARD
      EXPIRING_CARD = 'expiring_card'.freeze,

      # TODO: Write general description for METERED_USAGE
      METERED_USAGE = 'metered_usage'.freeze,

      # TODO: Write general description for PAYMENT_SUCCESS
      PAYMENT_SUCCESS = 'payment_success'.freeze,

      # TODO: Write general description for PAYMENT_SUCCESS_RECREATED
      PAYMENT_SUCCESS_RECREATED = 'payment_success_recreated'.freeze,

      # TODO: Write general description for PAYMENT_FAILURE
      PAYMENT_FAILURE = 'payment_failure'.freeze,

      # TODO: Write general description for PAYMENT_FAILURE_RECREATED
      PAYMENT_FAILURE_RECREATED = 'payment_failure_recreated'.freeze,

      # TODO: Write general description for REFUND_FAILURE
      REFUND_FAILURE = 'refund_failure'.freeze,

      # TODO: Write general description for REFUND_SUCCESS
      REFUND_SUCCESS = 'refund_success'.freeze,

      # TODO: Write general description for RENEWAL_SUCCESS
      RENEWAL_SUCCESS = 'renewal_success'.freeze,

      # TODO: Write general description for RENEWAL_SUCCESS_RECREATED
      RENEWAL_SUCCESS_RECREATED = 'renewal_success_recreated'.freeze,

      # TODO: Write general description for RENEWAL_FAILURE
      RENEWAL_FAILURE = 'renewal_failure'.freeze,

      # TODO: Write general description for SIGNUP_SUCCESS
      SIGNUP_SUCCESS = 'signup_success'.freeze,

      # TODO: Write general description for SIGNUP_FAILURE
      SIGNUP_FAILURE = 'signup_failure'.freeze,

      # TODO: Write general description for STATEMENT_CLOSED
      STATEMENT_CLOSED = 'statement_closed'.freeze,

      # TODO: Write general description for STATEMENT_SETTLED
      STATEMENT_SETTLED = 'statement_settled'.freeze,

      # TODO: Write general description for SUBSCRIPTION_BANK_ACCOUNT_UPDATE
      SUBSCRIPTION_BANK_ACCOUNT_UPDATE = 'subscription_bank_account_update'.freeze,

      # TODO: Write general description for SUBSCRIPTION_DELETION
      SUBSCRIPTION_DELETION = 'subscription_deletion'.freeze,

      # TODO: Write general description for SUBSCRIPTION_PAYPAL_ACCOUNT_UPDATE
      SUBSCRIPTION_PAYPAL_ACCOUNT_UPDATE = 'subscription_paypal_account_update'.freeze,

      # TODO: Write general description for SUBSCRIPTION_PRODUCT_CHANGE
      SUBSCRIPTION_PRODUCT_CHANGE = 'subscription_product_change'.freeze,

      # TODO: Write general description for SUBSCRIPTION_STATE_CHANGE
      SUBSCRIPTION_STATE_CHANGE = 'subscription_state_change'.freeze,

      # TODO: Write general description for TRIAL_END_NOTICE
      TRIAL_END_NOTICE = 'trial_end_notice'.freeze,

      # TODO: Write general description for UPGRADE_DOWNGRADE_SUCCESS
      UPGRADE_DOWNGRADE_SUCCESS = 'upgrade_downgrade_success'.freeze,

      # TODO: Write general description for UPGRADE_DOWNGRADE_FAILURE
      UPGRADE_DOWNGRADE_FAILURE = 'upgrade_downgrade_failure'.freeze,

      # TODO: Write general description for UPCOMING_RENEWAL_NOTICE
      UPCOMING_RENEWAL_NOTICE = 'upcoming_renewal_notice'.freeze,

      # TODO: Write general description for CUSTOM_FIELD_VALUE_CHANGE
      CUSTOM_FIELD_VALUE_CHANGE = 'custom_field_value_change'.freeze,

      # TODO: Write general description for
      # SUBSCRIPTION_PREPAYMENT_ACCOUNT_BALANCE_CHANGED
      SUBSCRIPTION_PREPAYMENT_ACCOUNT_BALANCE_CHANGED = 'subscription_prepayment_account_balance_changed'.freeze,

      # TODO: Write general description for
      # SUBSCRIPTION_SERVICE_CREDIT_ACCOUNT_BALANCE_CHANGED
      SUBSCRIPTION_SERVICE_CREDIT_ACCOUNT_BALANCE_CHANGED = 'subscription_service_credit_account_balance_changed'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      EVENT_TYPE.include?(value)
    end
  end
end
