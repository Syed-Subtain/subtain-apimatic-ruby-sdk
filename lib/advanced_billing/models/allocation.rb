# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # Allocation Model.
  class Allocation < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The integer component ID for the allocation. This references a component
    # that you have created in your Product setup
    # @return [Integer]
    attr_accessor :component_id

    # The integer subscription ID for the allocation. This references a unique
    # subscription in your Site
    # @return [Integer]
    attr_accessor :subscription_id

    # The allocated quantity set in to effect by the allocation
    # @return [Integer]
    attr_accessor :quantity

    # The allocated quantity that was in effect before this allocation was
    # created
    # @return [Integer]
    attr_accessor :previous_quantity

    # The memo passed when the allocation was created
    # @return [String]
    attr_accessor :memo

    # The time that the allocation was recorded, in  format and UTC timezone,
    # i.e. 2012-11-20T22:00:37Z
    # @return [String]
    attr_accessor :timestamp

    # The scheme used if the proration was an upgrade. This is only present when
    # the allocation was created mid-period.
    # @return [String]
    attr_accessor :proration_upgrade_scheme

    # The scheme used if the proration was a downgrade. This is only present
    # when the allocation was created mid-period.
    # @return [String]
    attr_accessor :proration_downgrade_scheme

    # The scheme used if the proration was a downgrade. This is only present
    # when the allocation was created mid-period.
    # @return [Integer]
    attr_accessor :price_point_id

    # The scheme used if the proration was a downgrade. This is only present
    # when the allocation was created mid-period.
    # @return [String]
    attr_accessor :price_point_name

    # The scheme used if the proration was a downgrade. This is only present
    # when the allocation was created mid-period.
    # @return [String]
    attr_accessor :price_point_handle

    # The scheme used if the proration was a downgrade. This is only present
    # when the allocation was created mid-period.
    # @return [Integer]
    attr_accessor :previous_price_point_id

    # If the change in cost is an upgrade, this determines if the charge should
    # accrue to the next renewal or if capture should be attempted immediately.
    # @return [TrueClass | FalseClass]
    attr_accessor :accrue_charge

    # The type of charge to be created if the change in cost is an upgrade.
    # @return [String]
    attr_accessor :upgrade_charge

    # The type of credit to be created if the change in cost is a downgrade.
    # @return [String]
    attr_accessor :downgrade_credit

    # The type of credit to be created if the change in cost is a downgrade.
    # @return [AllocationPayment]
    attr_accessor :payment

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['component_id'] = 'component_id'
      @_hash['subscription_id'] = 'subscription_id'
      @_hash['quantity'] = 'quantity'
      @_hash['previous_quantity'] = 'previous_quantity'
      @_hash['memo'] = 'memo'
      @_hash['timestamp'] = 'timestamp'
      @_hash['proration_upgrade_scheme'] = 'proration_upgrade_scheme'
      @_hash['proration_downgrade_scheme'] = 'proration_downgrade_scheme'
      @_hash['price_point_id'] = 'price_point_id'
      @_hash['price_point_name'] = 'price_point_name'
      @_hash['price_point_handle'] = 'price_point_handle'
      @_hash['previous_price_point_id'] = 'previous_price_point_id'
      @_hash['accrue_charge'] = 'accrue_charge'
      @_hash['upgrade_charge'] = 'upgrade_charge'
      @_hash['downgrade_credit'] = 'downgrade_credit'
      @_hash['payment'] = 'payment'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        component_id
        subscription_id
        quantity
        previous_quantity
        memo
        timestamp
        proration_upgrade_scheme
        proration_downgrade_scheme
        price_point_id
        price_point_name
        price_point_handle
        previous_price_point_id
        accrue_charge
        upgrade_charge
        downgrade_credit
        payment
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        memo
        payment
      ]
    end

    def initialize(component_id = SKIP, subscription_id = SKIP, quantity = SKIP,
                   previous_quantity = SKIP, memo = SKIP, timestamp = SKIP,
                   proration_upgrade_scheme = SKIP,
                   proration_downgrade_scheme = SKIP, price_point_id = SKIP,
                   price_point_name = SKIP, price_point_handle = SKIP,
                   previous_price_point_id = SKIP, accrue_charge = SKIP,
                   upgrade_charge = SKIP, downgrade_credit = SKIP,
                   payment = SKIP)
      @component_id = component_id unless component_id == SKIP
      @subscription_id = subscription_id unless subscription_id == SKIP
      @quantity = quantity unless quantity == SKIP
      @previous_quantity = previous_quantity unless previous_quantity == SKIP
      @memo = memo unless memo == SKIP
      @timestamp = timestamp unless timestamp == SKIP
      @proration_upgrade_scheme = proration_upgrade_scheme unless proration_upgrade_scheme == SKIP
      unless proration_downgrade_scheme == SKIP
        @proration_downgrade_scheme =
          proration_downgrade_scheme
      end
      @price_point_id = price_point_id unless price_point_id == SKIP
      @price_point_name = price_point_name unless price_point_name == SKIP
      @price_point_handle = price_point_handle unless price_point_handle == SKIP
      @previous_price_point_id = previous_price_point_id unless previous_price_point_id == SKIP
      @accrue_charge = accrue_charge unless accrue_charge == SKIP
      @upgrade_charge = upgrade_charge unless upgrade_charge == SKIP
      @downgrade_credit = downgrade_credit unless downgrade_credit == SKIP
      @payment = payment unless payment == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      component_id = hash.key?('component_id') ? hash['component_id'] : SKIP
      subscription_id =
        hash.key?('subscription_id') ? hash['subscription_id'] : SKIP
      quantity = hash.key?('quantity') ? hash['quantity'] : SKIP
      previous_quantity =
        hash.key?('previous_quantity') ? hash['previous_quantity'] : SKIP
      memo = hash.key?('memo') ? hash['memo'] : SKIP
      timestamp = hash.key?('timestamp') ? hash['timestamp'] : SKIP
      proration_upgrade_scheme =
        hash.key?('proration_upgrade_scheme') ? hash['proration_upgrade_scheme'] : SKIP
      proration_downgrade_scheme =
        hash.key?('proration_downgrade_scheme') ? hash['proration_downgrade_scheme'] : SKIP
      price_point_id =
        hash.key?('price_point_id') ? hash['price_point_id'] : SKIP
      price_point_name =
        hash.key?('price_point_name') ? hash['price_point_name'] : SKIP
      price_point_handle =
        hash.key?('price_point_handle') ? hash['price_point_handle'] : SKIP
      previous_price_point_id =
        hash.key?('previous_price_point_id') ? hash['previous_price_point_id'] : SKIP
      accrue_charge = hash.key?('accrue_charge') ? hash['accrue_charge'] : SKIP
      upgrade_charge =
        hash.key?('upgrade_charge') ? hash['upgrade_charge'] : SKIP
      downgrade_credit =
        hash.key?('downgrade_credit') ? hash['downgrade_credit'] : SKIP
      payment = hash.key?('payment') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:AllocationPayment2), hash['payment']
      ) : SKIP

      # Create object from extracted values.
      Allocation.new(component_id,
                     subscription_id,
                     quantity,
                     previous_quantity,
                     memo,
                     timestamp,
                     proration_upgrade_scheme,
                     proration_downgrade_scheme,
                     price_point_id,
                     price_point_name,
                     price_point_handle,
                     previous_price_point_id,
                     accrue_charge,
                     upgrade_charge,
                     downgrade_credit,
                     payment)
    end

    # Validates an instance of the object from a given value.
    # @param [Allocation | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
