# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # PrepaidSubscriptionBalanceChanged Model.
  class PrepaidSubscriptionBalanceChanged < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :reason

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :current_account_balance_in_cents

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :prepayment_account_balance_in_cents

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :current_usage_amount_in_cents

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['reason'] = 'reason'
      @_hash['current_account_balance_in_cents'] =
        'current_account_balance_in_cents'
      @_hash['prepayment_account_balance_in_cents'] =
        'prepayment_account_balance_in_cents'
      @_hash['current_usage_amount_in_cents'] =
        'current_usage_amount_in_cents'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(reason = nil, current_account_balance_in_cents = nil,
                   prepayment_account_balance_in_cents = nil,
                   current_usage_amount_in_cents = nil)
      @reason = reason
      @current_account_balance_in_cents = current_account_balance_in_cents
      @prepayment_account_balance_in_cents = prepayment_account_balance_in_cents
      @current_usage_amount_in_cents = current_usage_amount_in_cents
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      reason = hash.key?('reason') ? hash['reason'] : nil
      current_account_balance_in_cents =
        hash.key?('current_account_balance_in_cents') ? hash['current_account_balance_in_cents'] : nil
      prepayment_account_balance_in_cents =
        hash.key?('prepayment_account_balance_in_cents') ? hash['prepayment_account_balance_in_cents'] : nil
      current_usage_amount_in_cents =
        hash.key?('current_usage_amount_in_cents') ? hash['current_usage_amount_in_cents'] : nil

      # Create object from extracted values.
      PrepaidSubscriptionBalanceChanged.new(reason,
                                            current_account_balance_in_cents,
                                            prepayment_account_balance_in_cents,
                                            current_usage_amount_in_cents)
    end

    # Validates an instance of the object from a given value.
    # @param [PrepaidSubscriptionBalanceChanged | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          APIHelper.valid_type?(value.reason,
                                ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.current_account_balance_in_cents,
                                  ->(val) { val.instance_of? Integer }) and
            APIHelper.valid_type?(value.prepayment_account_balance_in_cents,
                                  ->(val) { val.instance_of? Integer }) and
            APIHelper.valid_type?(value.current_usage_amount_in_cents,
                                  ->(val) { val.instance_of? Integer })
        )
      end

      return false unless value.instance_of? Hash

      (
        APIHelper.valid_type?(value['reason'],
                              ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['current_account_balance_in_cents'],
                                ->(val) { val.instance_of? Integer }) and
          APIHelper.valid_type?(value['prepayment_account_balance_in_cents'],
                                ->(val) { val.instance_of? Integer }) and
          APIHelper.valid_type?(value['current_usage_amount_in_cents'],
                                ->(val) { val.instance_of? Integer })
      )
    end
  end
end
