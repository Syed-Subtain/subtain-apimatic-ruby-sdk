# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # PaymentRelatedEvents Model.
  class PaymentRelatedEvents < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :product_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :account_transaction_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['product_id'] = 'product_id'
      @_hash['account_transaction_id'] = 'account_transaction_id'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(product_id = nil,
                   account_transaction_id = nil)
      @product_id = product_id
      @account_transaction_id = account_transaction_id
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      product_id = hash.key?('product_id') ? hash['product_id'] : nil
      account_transaction_id =
        hash.key?('account_transaction_id') ? hash['account_transaction_id'] : nil

      # Create object from extracted values.
      PaymentRelatedEvents.new(product_id,
                               account_transaction_id)
    end

    # Validates an instance of the object from a given value.
    # @param [PaymentRelatedEvents | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          APIHelper.valid_type?(value.product_id,
                                ->(val) { val.instance_of? Integer }) and
            APIHelper.valid_type?(value.account_transaction_id,
                                  ->(val) { val.instance_of? Integer })
        )
      end

      return false unless value.instance_of? Hash

      (
        APIHelper.valid_type?(value['product_id'],
                              ->(val) { val.instance_of? Integer }) and
          APIHelper.valid_type?(value['account_transaction_id'],
                                ->(val) { val.instance_of? Integer })
      )
    end
  end
end
