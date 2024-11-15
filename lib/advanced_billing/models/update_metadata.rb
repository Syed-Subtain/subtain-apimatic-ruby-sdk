# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # UpdateMetadata Model.
  class UpdateMetadata < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :current_name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :value

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['current_name'] = 'current_name'
      @_hash['name'] = 'name'
      @_hash['value'] = 'value'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        current_name
        name
        value
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(current_name = SKIP, name = SKIP, value = SKIP)
      @current_name = current_name unless current_name == SKIP
      @name = name unless name == SKIP
      @value = value unless value == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      current_name = hash.key?('current_name') ? hash['current_name'] : SKIP
      name = hash.key?('name') ? hash['name'] : SKIP
      value = hash.key?('value') ? hash['value'] : SKIP

      # Create object from extracted values.
      UpdateMetadata.new(current_name,
                         name,
                         value)
    end
  end
end
