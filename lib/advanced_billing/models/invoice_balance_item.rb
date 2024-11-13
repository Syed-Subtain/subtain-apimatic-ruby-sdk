# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # InvoiceBalanceItem Model.
  class InvoiceBalanceItem < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :uid

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :number

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :outstanding_amount

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['uid'] = 'uid'
      @_hash['number'] = 'number'
      @_hash['outstanding_amount'] = 'outstanding_amount'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        uid
        number
        outstanding_amount
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(uid = SKIP, number = SKIP, outstanding_amount = SKIP)
      @uid = uid unless uid == SKIP
      @number = number unless number == SKIP
      @outstanding_amount = outstanding_amount unless outstanding_amount == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      uid = hash.key?('uid') ? hash['uid'] : SKIP
      number = hash.key?('number') ? hash['number'] : SKIP
      outstanding_amount =
        hash.key?('outstanding_amount') ? hash['outstanding_amount'] : SKIP

      # Create object from extracted values.
      InvoiceBalanceItem.new(uid,
                             number,
                             outstanding_amount)
    end

    # Validates an instance of the object from a given value.
    # @param [InvoiceBalanceItem | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
