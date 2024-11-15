# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # UpdateReasonCode Model.
  class UpdateReasonCode < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The unique identifier for the ReasonCode
    # @return [String]
    attr_accessor :code

    # The friendly summary of what the code signifies
    # @return [String]
    attr_accessor :description

    # The order that code appears in lists
    # @return [Integer]
    attr_accessor :position

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['code'] = 'code'
      @_hash['description'] = 'description'
      @_hash['position'] = 'position'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        code
        description
        position
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(code = SKIP, description = SKIP, position = SKIP)
      @code = code unless code == SKIP
      @description = description unless description == SKIP
      @position = position unless position == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      code = hash.key?('code') ? hash['code'] : SKIP
      description = hash.key?('description') ? hash['description'] : SKIP
      position = hash.key?('position') ? hash['position'] : SKIP

      # Create object from extracted values.
      UpdateReasonCode.new(code,
                           description,
                           position)
    end
  end
end
