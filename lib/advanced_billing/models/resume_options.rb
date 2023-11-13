# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # ResumeOptions Model.
  class ResumeOptions < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Chargify will only attempt to resume the subscription's billing period. If
    # not resumable, the subscription will be left in it's current state.
    # @return [TrueClass | FalseClass]
    attr_accessor :require_resume

    # Indicates whether or not Chargify should clear the subscription's existing
    # balance before attempting to resume the subscription. If subscription
    # cannot be resumed, the balance will remain as it was before the attempt to
    # resume was made.
    # @return [TrueClass | FalseClass]
    attr_accessor :forgive_balance

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['require_resume'] = 'require_resume'
      @_hash['forgive_balance'] = 'forgive_balance'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        require_resume
        forgive_balance
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(require_resume = SKIP,
                   forgive_balance = SKIP)
      @require_resume = require_resume unless require_resume == SKIP
      @forgive_balance = forgive_balance unless forgive_balance == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      require_resume =
        hash.key?('require_resume') ? hash['require_resume'] : SKIP
      forgive_balance =
        hash.key?('forgive_balance') ? hash['forgive_balance'] : SKIP

      # Create object from extracted values.
      ResumeOptions.new(require_resume,
                        forgive_balance)
    end

    # Validates an instance of the object from a given value.
    # @param [ResumeOptions | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
