# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # CreateMetafieldsRequest Model.
  class CreateMetafieldsRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Metafields]
    attr_accessor :metafields

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['metafields'] = 'metafields'
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

    def initialize(metafields = nil)
      @metafields = metafields
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      metafields = hash.key?('metafields') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:CreateMetafieldsRequestMetafields), hash['metafields']
      ) : nil

      # Create object from extracted values.
      CreateMetafieldsRequest.new(metafields)
    end

    # Validates an instance of the object from a given value.
    # @param [CreateMetafieldsRequest | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return UnionTypeLookUp.get(:CreateMetafieldsRequestMetafields)
                              .validate(value.metafields)
      end

      return false unless value.instance_of? Hash

      UnionTypeLookUp.get(:CreateMetafieldsRequestMetafields)
                     .validate(value['metafields'])
    end
  end
end
