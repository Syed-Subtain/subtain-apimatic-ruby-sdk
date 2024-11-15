# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # PreviewAllocationsRequest Model.
  class PreviewAllocationsRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[CreateAllocation]]
    attr_accessor :allocations

    # To calculate proration amounts for a future time. Only within a current
    # subscription period. Only ISO8601 format is supported.
    # @return [String]
    attr_accessor :effective_proration_date

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['allocations'] = 'allocations'
      @_hash['effective_proration_date'] = 'effective_proration_date'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        effective_proration_date
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(allocations = nil, effective_proration_date = SKIP)
      @allocations = allocations
      @effective_proration_date = effective_proration_date unless effective_proration_date == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      allocations = nil
      unless hash['allocations'].nil?
        allocations = []
        hash['allocations'].each do |structure|
          allocations << (CreateAllocation.from_hash(structure) if structure)
        end
      end

      allocations = nil unless hash.key?('allocations')
      effective_proration_date =
        hash.key?('effective_proration_date') ? hash['effective_proration_date'] : SKIP

      # Create object from extracted values.
      PreviewAllocationsRequest.new(allocations,
                                    effective_proration_date)
    end
  end
end
