# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # UpdateSubscription Model.
  class UpdateSubscription < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [CreditCardAttributes]
    attr_accessor :credit_card_attributes

    # Set to the handle of a different product to change the subscription's
    # product
    # @return [String]
    attr_accessor :product_handle

    # Set to the id of a different product to change the subscription's product
    # @return [Integer]
    attr_accessor :product_id

    # Set to the id of a different product to change the subscription's product
    # @return [TrueClass | FalseClass]
    attr_accessor :product_change_delayed

    # Set to an empty string to cancel a delayed product change.
    # @return [String]
    attr_accessor :next_product_id

    # Set to an empty string to cancel a delayed product change.
    # @return [String]
    attr_accessor :next_product_price_point_id

    # Use for subscriptions with product eligible for calendar billing only.
    # Value can be 1-28 or 'end'.
    # @return [Object]
    attr_accessor :snap_day

    # Use for subscriptions with product eligible for calendar billing only.
    # Value can be 1-28 or 'end'.
    # @return [String]
    attr_accessor :next_billing_at

    # Use for subscriptions with product eligible for calendar billing only.
    # Value can be 1-28 or 'end'.
    # @return [String]
    attr_accessor :payment_collection_method

    # Use for subscriptions with product eligible for calendar billing only.
    # Value can be 1-28 or 'end'.
    # @return [TrueClass | FalseClass]
    attr_accessor :receives_invoice_emails

    # Use for subscriptions with product eligible for calendar billing only.
    # Value can be 1-28 or 'end'.
    # @return [Object]
    attr_accessor :net_terms

    # Use for subscriptions with product eligible for calendar billing only.
    # Value can be 1-28 or 'end'.
    # @return [Integer]
    attr_accessor :stored_credential_transaction_id

    # Use for subscriptions with product eligible for calendar billing only.
    # Value can be 1-28 or 'end'.
    # @return [String]
    attr_accessor :reference

    # (Optional) Used in place of `product_price_point_id` to define a custom
    # price point unique to the subscription
    # @return [CustomPriceUsedForSubscriptionCreateUpdate]
    attr_accessor :custom_price

    # (Optional) An array of component ids and custom prices to be added to the
    # subscription.
    # @return [Array[UpdateSubscriptionComponent]]
    attr_accessor :components

    # Enable Communication Delay feature, making sure no communication (email or
    # SMS) is sent to the Customer between 9PM and 8AM in time zone set by the
    # `dunning_communication_delay_time_zone` attribute.
    # @return [TrueClass | FalseClass]
    attr_accessor :dunning_communication_delay_enabled

    # Time zone for the Dunning Communication Delay feature.
    # @return [String]
    attr_accessor :dunning_communication_delay_time_zone

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['credit_card_attributes'] = 'credit_card_attributes'
      @_hash['product_handle'] = 'product_handle'
      @_hash['product_id'] = 'product_id'
      @_hash['product_change_delayed'] = 'product_change_delayed'
      @_hash['next_product_id'] = 'next_product_id'
      @_hash['next_product_price_point_id'] = 'next_product_price_point_id'
      @_hash['snap_day'] = 'snap_day'
      @_hash['next_billing_at'] = 'next_billing_at'
      @_hash['payment_collection_method'] = 'payment_collection_method'
      @_hash['receives_invoice_emails'] = 'receives_invoice_emails'
      @_hash['net_terms'] = 'net_terms'
      @_hash['stored_credential_transaction_id'] =
        'stored_credential_transaction_id'
      @_hash['reference'] = 'reference'
      @_hash['custom_price'] = 'custom_price'
      @_hash['components'] = 'components'
      @_hash['dunning_communication_delay_enabled'] =
        'dunning_communication_delay_enabled'
      @_hash['dunning_communication_delay_time_zone'] =
        'dunning_communication_delay_time_zone'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        credit_card_attributes
        product_handle
        product_id
        product_change_delayed
        next_product_id
        next_product_price_point_id
        snap_day
        next_billing_at
        payment_collection_method
        receives_invoice_emails
        net_terms
        stored_credential_transaction_id
        reference
        custom_price
        components
        dunning_communication_delay_enabled
        dunning_communication_delay_time_zone
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        dunning_communication_delay_enabled
        dunning_communication_delay_time_zone
      ]
    end

    def initialize(credit_card_attributes = SKIP, product_handle = SKIP,
                   product_id = SKIP, product_change_delayed = false,
                   next_product_id = SKIP, next_product_price_point_id = SKIP,
                   snap_day = SKIP, next_billing_at = SKIP,
                   payment_collection_method = SKIP,
                   receives_invoice_emails = SKIP, net_terms = SKIP,
                   stored_credential_transaction_id = SKIP, reference = SKIP,
                   custom_price = SKIP, components = SKIP,
                   dunning_communication_delay_enabled = false,
                   dunning_communication_delay_time_zone = SKIP)
      @credit_card_attributes = credit_card_attributes unless credit_card_attributes == SKIP
      @product_handle = product_handle unless product_handle == SKIP
      @product_id = product_id unless product_id == SKIP
      @product_change_delayed = product_change_delayed unless product_change_delayed == SKIP
      @next_product_id = next_product_id unless next_product_id == SKIP
      unless next_product_price_point_id == SKIP
        @next_product_price_point_id =
          next_product_price_point_id
      end
      @snap_day = snap_day unless snap_day == SKIP
      @next_billing_at = next_billing_at unless next_billing_at == SKIP
      unless payment_collection_method == SKIP
        @payment_collection_method =
          payment_collection_method
      end
      @receives_invoice_emails = receives_invoice_emails unless receives_invoice_emails == SKIP
      @net_terms = net_terms unless net_terms == SKIP
      unless stored_credential_transaction_id == SKIP
        @stored_credential_transaction_id =
          stored_credential_transaction_id
      end
      @reference = reference unless reference == SKIP
      @custom_price = custom_price unless custom_price == SKIP
      @components = components unless components == SKIP
      unless dunning_communication_delay_enabled == SKIP
        @dunning_communication_delay_enabled =
          dunning_communication_delay_enabled
      end
      unless dunning_communication_delay_time_zone == SKIP
        @dunning_communication_delay_time_zone =
          dunning_communication_delay_time_zone
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      credit_card_attributes = CreditCardAttributes.from_hash(hash['credit_card_attributes']) if
        hash['credit_card_attributes']
      product_handle =
        hash.key?('product_handle') ? hash['product_handle'] : SKIP
      product_id = hash.key?('product_id') ? hash['product_id'] : SKIP
      product_change_delayed = hash['product_change_delayed'] ||= false
      next_product_id =
        hash.key?('next_product_id') ? hash['next_product_id'] : SKIP
      next_product_price_point_id =
        hash.key?('next_product_price_point_id') ? hash['next_product_price_point_id'] : SKIP
      snap_day = hash.key?('snap_day') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:UpdateSubscriptionSnapDay), hash['snap_day']
      ) : SKIP
      next_billing_at =
        hash.key?('next_billing_at') ? hash['next_billing_at'] : SKIP
      payment_collection_method =
        hash.key?('payment_collection_method') ? hash['payment_collection_method'] : SKIP
      receives_invoice_emails =
        hash.key?('receives_invoice_emails') ? hash['receives_invoice_emails'] : SKIP
      net_terms = hash.key?('net_terms') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:UpdateSubscriptionNetTerms), hash['net_terms']
      ) : SKIP
      stored_credential_transaction_id =
        hash.key?('stored_credential_transaction_id') ? hash['stored_credential_transaction_id'] : SKIP
      reference = hash.key?('reference') ? hash['reference'] : SKIP
      custom_price = CustomPriceUsedForSubscriptionCreateUpdate.from_hash(hash['custom_price']) if
        hash['custom_price']
      # Parameter is an array, so we need to iterate through it
      components = nil
      unless hash['components'].nil?
        components = []
        hash['components'].each do |structure|
          components << (UpdateSubscriptionComponent.from_hash(structure) if structure)
        end
      end

      components = SKIP unless hash.key?('components')
      dunning_communication_delay_enabled =
        hash['dunning_communication_delay_enabled'] ||= false
      dunning_communication_delay_time_zone =
        hash.key?('dunning_communication_delay_time_zone') ? hash['dunning_communication_delay_time_zone'] : SKIP

      # Create object from extracted values.
      UpdateSubscription.new(credit_card_attributes,
                             product_handle,
                             product_id,
                             product_change_delayed,
                             next_product_id,
                             next_product_price_point_id,
                             snap_day,
                             next_billing_at,
                             payment_collection_method,
                             receives_invoice_emails,
                             net_terms,
                             stored_credential_transaction_id,
                             reference,
                             custom_price,
                             components,
                             dunning_communication_delay_enabled,
                             dunning_communication_delay_time_zone)
    end

    # Validates an instance of the object from a given value.
    # @param [UpdateSubscription | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
