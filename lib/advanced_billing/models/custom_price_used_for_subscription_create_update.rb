# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # (Optional) Used in place of `product_price_point_id` to define a custom
  # price point unique to the subscription
  class CustomPriceUsedForSubscriptionCreateUpdate < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # (Optional)
    # @return [String]
    attr_accessor :name

    # (Optional)
    # @return [String]
    attr_accessor :handle

    # Required if using `custom_price` attribute.
    # @return [Object]
    attr_accessor :price_in_cents

    # Required if using `custom_price` attribute.
    # @return [Object]
    attr_accessor :interval

    # Required if using `custom_price` attribute.
    # @return [IntervalUnit]
    attr_accessor :interval_unit

    # (Optional)
    # @return [Object]
    attr_accessor :trial_price_in_cents

    # (Optional)
    # @return [Object]
    attr_accessor :trial_interval

    # (Optional)
    # @return [IntervalUnit]
    attr_accessor :trial_interval_unit

    # (Optional)
    # @return [Object]
    attr_accessor :initial_charge_in_cents

    # (Optional)
    # @return [TrueClass | FalseClass]
    attr_accessor :initial_charge_after_trial

    # (Optional)
    # @return [Object]
    attr_accessor :expiration_interval

    # (Optional)
    # @return [IntervalUnit]
    attr_accessor :expiration_interval_unit

    # (Optional)
    # @return [TrueClass | FalseClass]
    attr_accessor :tax_included

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['handle'] = 'handle'
      @_hash['price_in_cents'] = 'price_in_cents'
      @_hash['interval'] = 'interval'
      @_hash['interval_unit'] = 'interval_unit'
      @_hash['trial_price_in_cents'] = 'trial_price_in_cents'
      @_hash['trial_interval'] = 'trial_interval'
      @_hash['trial_interval_unit'] = 'trial_interval_unit'
      @_hash['initial_charge_in_cents'] = 'initial_charge_in_cents'
      @_hash['initial_charge_after_trial'] = 'initial_charge_after_trial'
      @_hash['expiration_interval'] = 'expiration_interval'
      @_hash['expiration_interval_unit'] = 'expiration_interval_unit'
      @_hash['tax_included'] = 'tax_included'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        name
        handle
        price_in_cents
        interval
        interval_unit
        trial_price_in_cents
        trial_interval
        trial_interval_unit
        initial_charge_in_cents
        initial_charge_after_trial
        expiration_interval
        expiration_interval_unit
        tax_included
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(name = SKIP, handle = SKIP, price_in_cents = SKIP,
                   interval = SKIP, interval_unit = SKIP,
                   trial_price_in_cents = SKIP, trial_interval = SKIP,
                   trial_interval_unit = SKIP, initial_charge_in_cents = SKIP,
                   initial_charge_after_trial = SKIP,
                   expiration_interval = SKIP, expiration_interval_unit = SKIP,
                   tax_included = SKIP)
      @name = name unless name == SKIP
      @handle = handle unless handle == SKIP
      @price_in_cents = price_in_cents unless price_in_cents == SKIP
      @interval = interval unless interval == SKIP
      @interval_unit = interval_unit unless interval_unit == SKIP
      @trial_price_in_cents = trial_price_in_cents unless trial_price_in_cents == SKIP
      @trial_interval = trial_interval unless trial_interval == SKIP
      @trial_interval_unit = trial_interval_unit unless trial_interval_unit == SKIP
      @initial_charge_in_cents = initial_charge_in_cents unless initial_charge_in_cents == SKIP
      unless initial_charge_after_trial == SKIP
        @initial_charge_after_trial =
          initial_charge_after_trial
      end
      @expiration_interval = expiration_interval unless expiration_interval == SKIP
      @expiration_interval_unit = expiration_interval_unit unless expiration_interval_unit == SKIP
      @tax_included = tax_included unless tax_included == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash.key?('name') ? hash['name'] : SKIP
      handle = hash.key?('handle') ? hash['handle'] : SKIP
      price_in_cents = hash.key?('price_in_cents') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:CustomPriceUsedForSubscriptionCreateUpdatePriceInCents), hash['price_in_cents']
      ) : SKIP
      interval = hash.key?('interval') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:CustomPriceUsedForSubscriptionCreateUpdateInterval), hash['interval']
      ) : SKIP
      interval_unit = hash.key?('interval_unit') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:CustomPriceUsedForSubscriptionCreateUpdateIntervalUnit), hash['interval_unit']
      ) : SKIP
      trial_price_in_cents = hash.key?('trial_price_in_cents') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:CustomPriceUsedForSubscriptionCreateUpdateTrialPriceInCents), hash['trial_price_in_cents']
      ) : SKIP
      trial_interval = hash.key?('trial_interval') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:CustomPriceUsedForSubscriptionCreateUpdateTrialInterval), hash['trial_interval']
      ) : SKIP
      trial_interval_unit = hash.key?('trial_interval_unit') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:CustomPriceUsedForSubscriptionCreateUpdateTrialIntervalUnit), hash['trial_interval_unit']
      ) : SKIP
      initial_charge_in_cents = hash.key?('initial_charge_in_cents') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:CustomPriceUsedForSubscriptionCreateUpdateInitialChargeInCents), hash['initial_charge_in_cents']
      ) : SKIP
      initial_charge_after_trial =
        hash.key?('initial_charge_after_trial') ? hash['initial_charge_after_trial'] : SKIP
      expiration_interval = hash.key?('expiration_interval') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:CustomPriceUsedForSubscriptionCreateUpdateExpirationInterval), hash['expiration_interval']
      ) : SKIP
      expiration_interval_unit = hash.key?('expiration_interval_unit') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:CustomPriceUsedForSubscriptionCreateUpdateExpirationIntervalUnit), hash['expiration_interval_unit']
      ) : SKIP
      tax_included = hash.key?('tax_included') ? hash['tax_included'] : SKIP

      # Create object from extracted values.
      CustomPriceUsedForSubscriptionCreateUpdate.new(name,
                                                     handle,
                                                     price_in_cents,
                                                     interval,
                                                     interval_unit,
                                                     trial_price_in_cents,
                                                     trial_interval,
                                                     trial_interval_unit,
                                                     initial_charge_in_cents,
                                                     initial_charge_after_trial,
                                                     expiration_interval,
                                                     expiration_interval_unit,
                                                     tax_included)
    end

    # Validates an instance of the object from a given value.
    # @param [CustomPriceUsedForSubscriptionCreateUpdate | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
