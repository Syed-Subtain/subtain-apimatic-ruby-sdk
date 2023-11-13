# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # CustomerBillingAddressChange Model.
  class CustomerBillingAddressChange < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Object]
    attr_accessor :before

    # TODO: Write general description for this method
    # @return [Object]
    attr_accessor :after

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['before'] = 'before'
      @_hash['after'] = 'after'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        before
        after
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(before = SKIP,
                   after = SKIP)
      @before = before unless before == SKIP
      @after = after unless after == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      before = hash.key?('before') ? hash['before'] : SKIP
      after = hash.key?('after') ? hash['after'] : SKIP

      # Create object from extracted values.
      CustomerBillingAddressChange.new(before,
                                       after)
    end
  end
end
