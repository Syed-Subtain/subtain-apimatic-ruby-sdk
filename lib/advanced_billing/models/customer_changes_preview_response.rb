# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # CustomerChangesPreviewResponse Model.
  class CustomerChangesPreviewResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [CustomerChange]
    attr_accessor :changes

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['changes'] = 'changes'
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

    def initialize(changes = nil)
      @changes = changes
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      changes = CustomerChange.from_hash(hash['changes']) if hash['changes']

      # Create object from extracted values.
      CustomerChangesPreviewResponse.new(changes)
    end
  end
end
