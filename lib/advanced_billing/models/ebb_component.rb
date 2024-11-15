# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # EBBComponent Model.
  class EBBComponent < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # A name for this component that is suitable for showing customers and
    # displaying on billing statements, ie. "Minutes".
    # @return [String]
    attr_accessor :name

    # The name of the unit of measurement for the component. It should be
    # singular since it will be automatically pluralized when necessary. i.e.
    # “message”, which may then be shown as “5 messages” on a subscription’s
    # component line-item
    # @return [String]
    attr_accessor :unit_name

    # A description for the component that will be displayed to the user on the
    # hosted signup page.
    # @return [String]
    attr_accessor :description

    # A unique identifier for your use that can be used to retrieve this
    # component is subsequent requests.  Must start with a letter or number and
    # may only contain lowercase letters, numbers, or the characters '.', ':',
    # '-', or '_'.
    # @return [String]
    attr_accessor :handle

    # Boolean flag describing whether a component is taxable or not.
    # @return [TrueClass | FalseClass]
    attr_accessor :taxable

    # The identifier for the pricing scheme. See [Product
    # Components](https://help.chargify.com/products/product-components.html)
    # for an overview of pricing schemes.
    # @return [PricingScheme]
    attr_accessor :pricing_scheme

    # (Not required for ‘per_unit’ pricing schemes) One or more price brackets.
    # See [Price Bracket
    # Rules](https://help.chargify.com/products/product-components.html#general-
    # price-bracket-rules) for an overview of how price brackets work for
    # different pricing schemes.
    # @return [Array[Price]]
    attr_accessor :prices

    # (Not required for ‘per_unit’ pricing schemes) One or more price brackets.
    # See [Price Bracket
    # Rules](https://help.chargify.com/products/product-components.html#general-
    # price-bracket-rules) for an overview of how price brackets work for
    # different pricing schemes.
    # @return [String]
    attr_accessor :upgrade_charge

    # (Not required for ‘per_unit’ pricing schemes) One or more price brackets.
    # See [Price Bracket
    # Rules](https://help.chargify.com/products/product-components.html#general-
    # price-bracket-rules) for an overview of how price brackets work for
    # different pricing schemes.
    # @return [String]
    attr_accessor :downgrade_credit

    # (Not required for ‘per_unit’ pricing schemes) One or more price brackets.
    # See [Price Bracket
    # Rules](https://help.chargify.com/products/product-components.html#general-
    # price-bracket-rules) for an overview of how price brackets work for
    # different pricing schemes.
    # @return [Array[ComponentPricePointItem]]
    attr_accessor :price_points

    # The amount the customer will be charged per unit when the pricing scheme
    # is “per_unit”. The price can contain up to 8 decimal places. i.e. 1.00 or
    # 0.0012 or 0.00000065
    # @return [Object]
    attr_accessor :unit_price

    # A string representing the tax code related to the component type. This is
    # especially important when using the Avalara service to tax based on
    # locale. This attribute has a max length of 10 characters.
    # @return [String]
    attr_accessor :tax_code

    # (Only available on Relationship Invoicing sites) Boolean flag describing
    # if the service date range should show for the component on generated
    # invoices.
    # @return [TrueClass | FalseClass]
    attr_accessor :hide_date_range_on_invoice

    # deprecated May 2011 - use unit_price instead
    # @return [String]
    attr_accessor :price_in_cents

    # The ID of an event based billing metric that will be attached to this
    # component.
    # @return [Integer]
    attr_accessor :event_based_billing_metric_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['unit_name'] = 'unit_name'
      @_hash['description'] = 'description'
      @_hash['handle'] = 'handle'
      @_hash['taxable'] = 'taxable'
      @_hash['pricing_scheme'] = 'pricing_scheme'
      @_hash['prices'] = 'prices'
      @_hash['upgrade_charge'] = 'upgrade_charge'
      @_hash['downgrade_credit'] = 'downgrade_credit'
      @_hash['price_points'] = 'price_points'
      @_hash['unit_price'] = 'unit_price'
      @_hash['tax_code'] = 'tax_code'
      @_hash['hide_date_range_on_invoice'] = 'hide_date_range_on_invoice'
      @_hash['price_in_cents'] = 'price_in_cents'
      @_hash['event_based_billing_metric_id'] =
        'event_based_billing_metric_id'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        description
        handle
        taxable
        prices
        upgrade_charge
        downgrade_credit
        price_points
        unit_price
        tax_code
        hide_date_range_on_invoice
        price_in_cents
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(name = nil, unit_name = nil, pricing_scheme = nil,
                   event_based_billing_metric_id = nil, description = SKIP,
                   handle = SKIP, taxable = SKIP, prices = SKIP,
                   upgrade_charge = SKIP, downgrade_credit = SKIP,
                   price_points = SKIP, unit_price = SKIP, tax_code = SKIP,
                   hide_date_range_on_invoice = SKIP, price_in_cents = SKIP)
      @name = name
      @unit_name = unit_name
      @description = description unless description == SKIP
      @handle = handle unless handle == SKIP
      @taxable = taxable unless taxable == SKIP
      @pricing_scheme = pricing_scheme
      @prices = prices unless prices == SKIP
      @upgrade_charge = upgrade_charge unless upgrade_charge == SKIP
      @downgrade_credit = downgrade_credit unless downgrade_credit == SKIP
      @price_points = price_points unless price_points == SKIP
      @unit_price = unit_price unless unit_price == SKIP
      @tax_code = tax_code unless tax_code == SKIP
      unless hide_date_range_on_invoice == SKIP
        @hide_date_range_on_invoice =
          hide_date_range_on_invoice
      end
      @price_in_cents = price_in_cents unless price_in_cents == SKIP
      @event_based_billing_metric_id = event_based_billing_metric_id
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash.key?('name') ? hash['name'] : nil
      unit_name = hash.key?('unit_name') ? hash['unit_name'] : nil
      pricing_scheme = hash.key?('pricing_scheme') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:EBBComponentPricingScheme), hash['pricing_scheme']
      ) : nil
      event_based_billing_metric_id =
        hash.key?('event_based_billing_metric_id') ? hash['event_based_billing_metric_id'] : nil
      description = hash.key?('description') ? hash['description'] : SKIP
      handle = hash.key?('handle') ? hash['handle'] : SKIP
      taxable = hash.key?('taxable') ? hash['taxable'] : SKIP
      # Parameter is an array, so we need to iterate through it
      prices = nil
      unless hash['prices'].nil?
        prices = []
        hash['prices'].each do |structure|
          prices << (Price.from_hash(structure) if structure)
        end
      end

      prices = SKIP unless hash.key?('prices')
      upgrade_charge =
        hash.key?('upgrade_charge') ? hash['upgrade_charge'] : SKIP
      downgrade_credit =
        hash.key?('downgrade_credit') ? hash['downgrade_credit'] : SKIP
      # Parameter is an array, so we need to iterate through it
      price_points = nil
      unless hash['price_points'].nil?
        price_points = []
        hash['price_points'].each do |structure|
          price_points << (ComponentPricePointItem.from_hash(structure) if structure)
        end
      end

      price_points = SKIP unless hash.key?('price_points')
      unit_price = hash.key?('unit_price') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:EBBComponentUnitPrice), hash['unit_price']
      ) : SKIP
      tax_code = hash.key?('tax_code') ? hash['tax_code'] : SKIP
      hide_date_range_on_invoice =
        hash.key?('hide_date_range_on_invoice') ? hash['hide_date_range_on_invoice'] : SKIP
      price_in_cents =
        hash.key?('price_in_cents') ? hash['price_in_cents'] : SKIP

      # Create object from extracted values.
      EBBComponent.new(name,
                       unit_name,
                       pricing_scheme,
                       event_based_billing_metric_id,
                       description,
                       handle,
                       taxable,
                       prices,
                       upgrade_charge,
                       downgrade_credit,
                       price_points,
                       unit_price,
                       tax_code,
                       hide_date_range_on_invoice,
                       price_in_cents)
    end

    # Validates an instance of the object from a given value.
    # @param [EBBComponent | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          APIHelper.valid_type?(value.name,
                                ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.unit_name,
                                  ->(val) { val.instance_of? String }) and
            UnionTypeLookUp.get(:EBBComponentPricingScheme)
                           .validate(value.pricing_scheme) and
            APIHelper.valid_type?(value.event_based_billing_metric_id,
                                  ->(val) { val.instance_of? Integer })
        )
      end

      return false unless value.instance_of? Hash

      (
        APIHelper.valid_type?(value['name'],
                              ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['unit_name'],
                                ->(val) { val.instance_of? String }) and
          UnionTypeLookUp.get(:EBBComponentPricingScheme)
                         .validate(value['pricing_scheme']) and
          APIHelper.valid_type?(value['event_based_billing_metric_id'],
                                ->(val) { val.instance_of? Integer })
      )
    end
  end
end
