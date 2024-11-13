# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # CouponRestriction Model.
  class CouponRestriction < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [RestrictionType]
    attr_accessor :item_type

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :item_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :handle

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['item_type'] = 'item_type'
      @_hash['item_id'] = 'item_id'
      @_hash['name'] = 'name'
      @_hash['handle'] = 'handle'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        item_type
        item_id
        name
        handle
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        handle
      ]
    end

    def initialize(id = SKIP, item_type = SKIP, item_id = SKIP, name = SKIP,
                   handle = SKIP)
      @id = id unless id == SKIP
      @item_type = item_type unless item_type == SKIP
      @item_id = item_id unless item_id == SKIP
      @name = name unless name == SKIP
      @handle = handle unless handle == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      item_type = hash.key?('item_type') ? hash['item_type'] : SKIP
      item_id = hash.key?('item_id') ? hash['item_id'] : SKIP
      name = hash.key?('name') ? hash['name'] : SKIP
      handle = hash.key?('handle') ? hash['handle'] : SKIP

      # Create object from extracted values.
      CouponRestriction.new(id,
                            item_type,
                            item_id,
                            name,
                            handle)
    end

    # Validates an instance of the object from a given value.
    # @param [CouponRestriction | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
