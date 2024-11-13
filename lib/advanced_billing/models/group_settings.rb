# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # GroupSettings Model.
  class GroupSettings < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Attributes of the target customer who will be the responsible payer of the
    # created subscription. Required.
    # @return [GroupTarget]
    attr_accessor :target

    # Optional attributes related to billing date and accrual. Note: Only
    # applicable for new subscriptions.
    # @return [GroupBilling]
    attr_accessor :billing

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['target'] = 'target'
      @_hash['billing'] = 'billing'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        billing
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(target = nil, billing = SKIP)
      @target = target
      @billing = billing unless billing == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      target = GroupTarget.from_hash(hash['target']) if hash['target']
      billing = GroupBilling.from_hash(hash['billing']) if hash['billing']

      # Create object from extracted values.
      GroupSettings.new(target,
                        billing)
    end

    # Validates an instance of the object from a given value.
    # @param [GroupSettings | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return APIHelper.valid_type?(value.target,
                                     ->(val) { GroupTarget.validate(val) },
                                     is_model_hash: true)
      end

      return false unless value.instance_of? Hash

      APIHelper.valid_type?(value['target'],
                            ->(val) { GroupTarget.validate(val) },
                            is_model_hash: true)
    end
  end
end
