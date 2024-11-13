# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # ProductPricePoint Model.
  class ProductPricePoint < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :handle

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :price_in_cents

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :interval

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :interval_unit

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :trial_price_in_cents

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :trial_interval

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :trial_interval_unit

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :trial_type

    # reserved for future use
    # @return [TrueClass | FalseClass]
    attr_accessor :introductory_offer

    # reserved for future use
    # @return [Integer]
    attr_accessor :initial_charge_in_cents

    # reserved for future use
    # @return [TrueClass | FalseClass]
    attr_accessor :initial_charge_after_trial

    # reserved for future use
    # @return [Integer]
    attr_accessor :expiration_interval

    # reserved for future use
    # @return [String]
    attr_accessor :expiration_interval_unit

    # reserved for future use
    # @return [Integer]
    attr_accessor :product_id

    # reserved for future use
    # @return [String]
    attr_accessor :archived_at

    # reserved for future use
    # @return [String]
    attr_accessor :created_at

    # reserved for future use
    # @return [String]
    attr_accessor :updated_at

    # Whether or not to use the site's exchange rate or define your own pricing
    # when your site has multiple currencies defined.
    # @return [TrueClass | FalseClass]
    attr_accessor :use_site_exchange_rate

    # Price point type. We expose the following types:
    # 1. **default**: a price point that is marked as a default price for a
    # certain product.
    # 2. **custom**: a custom price point.
    # 3. **catalog**: a price point that is **not** marked as a default price
    # for a certain product and is **not** a custom one.
    # @return [PricePointType]
    attr_accessor :type

    # Price point type. We expose the following types:
    # 1. **default**: a price point that is marked as a default price for a
    # certain product.
    # 2. **custom**: a custom price point.
    # 3. **catalog**: a price point that is **not** marked as a default price
    # for a certain product and is **not** a custom one.
    # @return [TrueClass | FalseClass]
    attr_accessor :tax_included

    # Price point type. We expose the following types:
    # 1. **default**: a price point that is marked as a default price for a
    # certain product.
    # 2. **custom**: a custom price point.
    # 3. **catalog**: a price point that is **not** marked as a default price
    # for a certain product and is **not** a custom one.
    # @return [Integer]
    attr_accessor :subscription_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['name'] = 'name'
      @_hash['handle'] = 'handle'
      @_hash['price_in_cents'] = 'price_in_cents'
      @_hash['interval'] = 'interval'
      @_hash['interval_unit'] = 'interval_unit'
      @_hash['trial_price_in_cents'] = 'trial_price_in_cents'
      @_hash['trial_interval'] = 'trial_interval'
      @_hash['trial_interval_unit'] = 'trial_interval_unit'
      @_hash['trial_type'] = 'trial_type'
      @_hash['introductory_offer'] = 'introductory_offer'
      @_hash['initial_charge_in_cents'] = 'initial_charge_in_cents'
      @_hash['initial_charge_after_trial'] = 'initial_charge_after_trial'
      @_hash['expiration_interval'] = 'expiration_interval'
      @_hash['expiration_interval_unit'] = 'expiration_interval_unit'
      @_hash['product_id'] = 'product_id'
      @_hash['archived_at'] = 'archived_at'
      @_hash['created_at'] = 'created_at'
      @_hash['updated_at'] = 'updated_at'
      @_hash['use_site_exchange_rate'] = 'use_site_exchange_rate'
      @_hash['type'] = 'type'
      @_hash['tax_included'] = 'tax_included'
      @_hash['subscription_id'] = 'subscription_id'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        name
        handle
        price_in_cents
        interval
        interval_unit
        trial_price_in_cents
        trial_interval
        trial_interval_unit
        trial_type
        introductory_offer
        initial_charge_in_cents
        initial_charge_after_trial
        expiration_interval
        expiration_interval_unit
        product_id
        archived_at
        created_at
        updated_at
        use_site_exchange_rate
        type
        tax_included
        subscription_id
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        subscription_id
      ]
    end

    def initialize(id = SKIP, name = SKIP, handle = SKIP, price_in_cents = SKIP,
                   interval = SKIP, interval_unit = SKIP,
                   trial_price_in_cents = SKIP, trial_interval = SKIP,
                   trial_interval_unit = SKIP, trial_type = SKIP,
                   introductory_offer = SKIP, initial_charge_in_cents = SKIP,
                   initial_charge_after_trial = SKIP,
                   expiration_interval = SKIP, expiration_interval_unit = SKIP,
                   product_id = SKIP, archived_at = SKIP, created_at = SKIP,
                   updated_at = SKIP, use_site_exchange_rate = SKIP,
                   type = SKIP, tax_included = SKIP, subscription_id = SKIP)
      @id = id unless id == SKIP
      @name = name unless name == SKIP
      @handle = handle unless handle == SKIP
      @price_in_cents = price_in_cents unless price_in_cents == SKIP
      @interval = interval unless interval == SKIP
      @interval_unit = interval_unit unless interval_unit == SKIP
      @trial_price_in_cents = trial_price_in_cents unless trial_price_in_cents == SKIP
      @trial_interval = trial_interval unless trial_interval == SKIP
      @trial_interval_unit = trial_interval_unit unless trial_interval_unit == SKIP
      @trial_type = trial_type unless trial_type == SKIP
      @introductory_offer = introductory_offer unless introductory_offer == SKIP
      @initial_charge_in_cents = initial_charge_in_cents unless initial_charge_in_cents == SKIP
      unless initial_charge_after_trial == SKIP
        @initial_charge_after_trial =
          initial_charge_after_trial
      end
      @expiration_interval = expiration_interval unless expiration_interval == SKIP
      @expiration_interval_unit = expiration_interval_unit unless expiration_interval_unit == SKIP
      @product_id = product_id unless product_id == SKIP
      @archived_at = archived_at unless archived_at == SKIP
      @created_at = created_at unless created_at == SKIP
      @updated_at = updated_at unless updated_at == SKIP
      @use_site_exchange_rate = use_site_exchange_rate unless use_site_exchange_rate == SKIP
      @type = type unless type == SKIP
      @tax_included = tax_included unless tax_included == SKIP
      @subscription_id = subscription_id unless subscription_id == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      name = hash.key?('name') ? hash['name'] : SKIP
      handle = hash.key?('handle') ? hash['handle'] : SKIP
      price_in_cents =
        hash.key?('price_in_cents') ? hash['price_in_cents'] : SKIP
      interval = hash.key?('interval') ? hash['interval'] : SKIP
      interval_unit = hash.key?('interval_unit') ? hash['interval_unit'] : SKIP
      trial_price_in_cents =
        hash.key?('trial_price_in_cents') ? hash['trial_price_in_cents'] : SKIP
      trial_interval =
        hash.key?('trial_interval') ? hash['trial_interval'] : SKIP
      trial_interval_unit =
        hash.key?('trial_interval_unit') ? hash['trial_interval_unit'] : SKIP
      trial_type = hash.key?('trial_type') ? hash['trial_type'] : SKIP
      introductory_offer =
        hash.key?('introductory_offer') ? hash['introductory_offer'] : SKIP
      initial_charge_in_cents =
        hash.key?('initial_charge_in_cents') ? hash['initial_charge_in_cents'] : SKIP
      initial_charge_after_trial =
        hash.key?('initial_charge_after_trial') ? hash['initial_charge_after_trial'] : SKIP
      expiration_interval =
        hash.key?('expiration_interval') ? hash['expiration_interval'] : SKIP
      expiration_interval_unit =
        hash.key?('expiration_interval_unit') ? hash['expiration_interval_unit'] : SKIP
      product_id = hash.key?('product_id') ? hash['product_id'] : SKIP
      archived_at = hash.key?('archived_at') ? hash['archived_at'] : SKIP
      created_at = hash.key?('created_at') ? hash['created_at'] : SKIP
      updated_at = hash.key?('updated_at') ? hash['updated_at'] : SKIP
      use_site_exchange_rate =
        hash.key?('use_site_exchange_rate') ? hash['use_site_exchange_rate'] : SKIP
      type = hash.key?('type') ? hash['type'] : SKIP
      tax_included = hash.key?('tax_included') ? hash['tax_included'] : SKIP
      subscription_id =
        hash.key?('subscription_id') ? hash['subscription_id'] : SKIP

      # Create object from extracted values.
      ProductPricePoint.new(id,
                            name,
                            handle,
                            price_in_cents,
                            interval,
                            interval_unit,
                            trial_price_in_cents,
                            trial_interval,
                            trial_interval_unit,
                            trial_type,
                            introductory_offer,
                            initial_charge_in_cents,
                            initial_charge_after_trial,
                            expiration_interval,
                            expiration_interval_unit,
                            product_id,
                            archived_at,
                            created_at,
                            updated_at,
                            use_site_exchange_rate,
                            type,
                            tax_included,
                            subscription_id)
    end
  end
end
