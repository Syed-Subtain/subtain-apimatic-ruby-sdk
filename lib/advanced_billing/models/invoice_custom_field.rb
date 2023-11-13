# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # InvoiceCustomField Model.
  class InvoiceCustomField < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :value

    # TODO: Write general description for this method
    # @return [Float]
    attr_accessor :owner_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :owner_type

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['value'] = 'value'
      @_hash['owner_id'] = 'owner_id'
      @_hash['owner_type'] = 'owner_type'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        name
        value
        owner_id
        owner_type
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(name = SKIP,
                   value = SKIP,
                   owner_id = SKIP,
                   owner_type = SKIP)
      @name = name unless name == SKIP
      @value = value unless value == SKIP
      @owner_id = owner_id unless owner_id == SKIP
      @owner_type = owner_type unless owner_type == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash.key?('name') ? hash['name'] : SKIP
      value = hash.key?('value') ? hash['value'] : SKIP
      owner_id = hash.key?('owner_id') ? hash['owner_id'] : SKIP
      owner_type = hash.key?('owner_type') ? hash['owner_type'] : SKIP

      # Create object from extracted values.
      InvoiceCustomField.new(name,
                             value,
                             owner_id,
                             owner_type)
    end
  end
end
