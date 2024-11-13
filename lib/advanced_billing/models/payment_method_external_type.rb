# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # PaymentMethodExternalType Model.
  class PaymentMethodExternalType < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :details

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :kind

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :memo

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :type

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['details'] = 'details'
      @_hash['kind'] = 'kind'
      @_hash['memo'] = 'memo'
      @_hash['type'] = 'type'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        details
        kind
        memo
        type
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(details = SKIP, kind = SKIP, memo = SKIP, type = 'external')
      @details = details unless details == SKIP
      @kind = kind unless kind == SKIP
      @memo = memo unless memo == SKIP
      @type = type unless type == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      details = hash.key?('details') ? hash['details'] : SKIP
      kind = hash.key?('kind') ? hash['kind'] : SKIP
      memo = hash.key?('memo') ? hash['memo'] : SKIP
      type = hash['type'] ||= 'external'

      # Create object from extracted values.
      PaymentMethodExternalType.new(details,
                                    kind,
                                    memo,
                                    type)
    end

    # Validates an instance of the object from a given value.
    # @param [PaymentMethodExternalType | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
