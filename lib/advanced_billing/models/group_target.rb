# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # Attributes of the target customer who will be the responsible payer of the
  # created subscription. Required.
  class GroupTarget < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The type of object indicated by the id attribute.
    # @return [GroupTargetType]
    attr_accessor :type

    # The id of the target customer or subscription to group the existing
    # subscription with. Ignored and should not be included if type is "self" ,
    # "parent", or "eldest"
    # @return [Integer]
    attr_accessor :id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['type'] = 'type'
      @_hash['id'] = 'id'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(type = nil, id = SKIP)
      @type = type
      @id = id unless id == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      type = hash.key?('type') ? hash['type'] : nil
      id = hash.key?('id') ? hash['id'] : SKIP

      # Create object from extracted values.
      GroupTarget.new(type,
                      id)
    end

    # Validates an instance of the object from a given value.
    # @param [GroupTarget | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return APIHelper.valid_type?(value.type,
                                     ->(val) { GroupTargetType.validate(val) })
      end

      return false unless value.instance_of? Hash

      APIHelper.valid_type?(value['type'],
                            ->(val) { GroupTargetType.validate(val) })
    end
  end
end
