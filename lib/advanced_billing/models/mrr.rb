# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # MRR Model.
  class MRR < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :amount_in_cents

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :amount_formatted

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :currency

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :currency_symbol

    # TODO: Write general description for this method
    # @return [Breakouts]
    attr_accessor :breakouts

    # ISO8601 timestamp
    # @return [String]
    attr_accessor :at_time

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['amount_in_cents'] = 'amount_in_cents'
      @_hash['amount_formatted'] = 'amount_formatted'
      @_hash['currency'] = 'currency'
      @_hash['currency_symbol'] = 'currency_symbol'
      @_hash['breakouts'] = 'breakouts'
      @_hash['at_time'] = 'at_time'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        amount_in_cents
        amount_formatted
        currency
        currency_symbol
        breakouts
        at_time
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(amount_in_cents = SKIP, amount_formatted = SKIP,
                   currency = SKIP, currency_symbol = SKIP, breakouts = SKIP,
                   at_time = SKIP)
      @amount_in_cents = amount_in_cents unless amount_in_cents == SKIP
      @amount_formatted = amount_formatted unless amount_formatted == SKIP
      @currency = currency unless currency == SKIP
      @currency_symbol = currency_symbol unless currency_symbol == SKIP
      @breakouts = breakouts unless breakouts == SKIP
      @at_time = at_time unless at_time == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      amount_in_cents =
        hash.key?('amount_in_cents') ? hash['amount_in_cents'] : SKIP
      amount_formatted =
        hash.key?('amount_formatted') ? hash['amount_formatted'] : SKIP
      currency = hash.key?('currency') ? hash['currency'] : SKIP
      currency_symbol =
        hash.key?('currency_symbol') ? hash['currency_symbol'] : SKIP
      breakouts = Breakouts.from_hash(hash['breakouts']) if hash['breakouts']
      at_time = hash.key?('at_time') ? hash['at_time'] : SKIP

      # Create object from extracted values.
      MRR.new(amount_in_cents,
              amount_formatted,
              currency,
              currency_symbol,
              breakouts,
              at_time)
    end
  end
end
