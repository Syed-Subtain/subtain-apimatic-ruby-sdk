# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # PaymentMethodPaypalType Model.
  class PaymentMethodPaypalType < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :email

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :type

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['email'] = 'email'
      @_hash['type'] = 'type'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        email
        type
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(email = SKIP, type = 'paypal_account')
      @email = email unless email == SKIP
      @type = type unless type == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      email = hash.key?('email') ? hash['email'] : SKIP
      type = hash['type'] ||= 'paypal_account'

      # Create object from extracted values.
      PaymentMethodPaypalType.new(email,
                                  type)
    end

    # Validates an instance of the object from a given value.
    # @param [PaymentMethodPaypalType | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
