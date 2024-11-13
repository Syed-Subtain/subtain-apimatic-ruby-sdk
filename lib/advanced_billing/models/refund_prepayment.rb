# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # RefundPrepayment Model.
  class RefundPrepayment < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # `amount` is not required if you pass `amount_in_cents`.
    # @return [Float]
    attr_accessor :amount_in_cents

    # `amount_in_cents` is not required if you pass `amount`.
    # @return [Object]
    attr_accessor :amount

    # `amount_in_cents` is not required if you pass `amount`.
    # @return [String]
    attr_accessor :memo

    # Specify the type of refund you wish to initiate. When the prepayment is
    # external, the `external` flag is optional. But if the prepayment was made
    # through a payment profile, the `external` flag is required.
    # @return [TrueClass | FalseClass]
    attr_accessor :external

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['amount_in_cents'] = 'amount_in_cents'
      @_hash['amount'] = 'amount'
      @_hash['memo'] = 'memo'
      @_hash['external'] = 'external'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        external
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(amount_in_cents = nil, amount = nil, memo = nil,
                   external = SKIP)
      @amount_in_cents = amount_in_cents
      @amount = amount
      @memo = memo
      @external = external unless external == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      amount_in_cents =
        hash.key?('amount_in_cents') ? hash['amount_in_cents'] : nil
      amount = hash.key?('amount') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:RefundPrepaymentAmount), hash['amount']
      ) : nil
      memo = hash.key?('memo') ? hash['memo'] : nil
      external = hash.key?('external') ? hash['external'] : SKIP

      # Create object from extracted values.
      RefundPrepayment.new(amount_in_cents,
                           amount,
                           memo,
                           external)
    end

    # Validates an instance of the object from a given value.
    # @param [RefundPrepayment | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          APIHelper.valid_type?(value.amount_in_cents,
                                ->(val) { val.instance_of? Float }) and
            UnionTypeLookUp.get(:RefundPrepaymentAmount)
                           .validate(value.amount) and
            APIHelper.valid_type?(value.memo,
                                  ->(val) { val.instance_of? String })
        )
      end

      return false unless value.instance_of? Hash

      (
        APIHelper.valid_type?(value['amount_in_cents'],
                              ->(val) { val.instance_of? Float }) and
          UnionTypeLookUp.get(:RefundPrepaymentAmount)
                         .validate(value['amount']) and
          APIHelper.valid_type?(value['memo'],
                                ->(val) { val.instance_of? String })
      )
    end
  end
end
