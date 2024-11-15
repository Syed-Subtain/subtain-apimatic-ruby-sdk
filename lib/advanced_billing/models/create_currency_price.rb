# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # CreateCurrencyPrice Model.
  class CreateCurrencyPrice < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # ISO code for a currency defined on the site level
    # @return [String]
    attr_accessor :currency

    # Price for the price level in this currency
    # @return [Integer]
    attr_accessor :price

    # ID of the price that this corresponds with
    # @return [Integer]
    attr_accessor :price_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['currency'] = 'currency'
      @_hash['price'] = 'price'
      @_hash['price_id'] = 'price_id'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        currency
        price
        price_id
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(currency = SKIP, price = SKIP, price_id = SKIP)
      @currency = currency unless currency == SKIP
      @price = price unless price == SKIP
      @price_id = price_id unless price_id == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      currency = hash.key?('currency') ? hash['currency'] : SKIP
      price = hash.key?('price') ? hash['price'] : SKIP
      price_id = hash.key?('price_id') ? hash['price_id'] : SKIP

      # Create object from extracted values.
      CreateCurrencyPrice.new(currency,
                              price,
                              price_id)
    end
  end
end
