# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # PrepaymentAggregatedError Model.
  class PrepaymentAggregatedError < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[String]]
    attr_accessor :amount_in_cents

    # TODO: Write general description for this method
    # @return [Array[String]]
    attr_accessor :base

    # TODO: Write general description for this method
    # @return [Array[String]]
    attr_accessor :external

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['amount_in_cents'] = 'amount_in_cents'
      @_hash['base'] = 'base'
      @_hash['external'] = 'external'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        amount_in_cents
        base
        external
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(amount_in_cents = SKIP, base = SKIP, external = SKIP)
      @amount_in_cents = amount_in_cents unless amount_in_cents == SKIP
      @base = base unless base == SKIP
      @external = external unless external == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      amount_in_cents =
        hash.key?('amount_in_cents') ? hash['amount_in_cents'] : SKIP
      base = hash.key?('base') ? hash['base'] : SKIP
      external = hash.key?('external') ? hash['external'] : SKIP

      # Create object from extracted values.
      PrepaymentAggregatedError.new(amount_in_cents,
                                    base,
                                    external)
    end
  end
end
