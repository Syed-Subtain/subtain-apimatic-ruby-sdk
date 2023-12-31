# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # PrepaymentsResponse Model.
  class PrepaymentsResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[Prepayment1]]
    attr_accessor :prepayments

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['prepayments'] = 'prepayments'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        prepayments
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(prepayments = SKIP)
      @prepayments = prepayments unless prepayments == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      prepayments = nil
      unless hash['prepayments'].nil?
        prepayments = []
        hash['prepayments'].each do |structure|
          prepayments << (Prepayment1.from_hash(structure) if structure)
        end
      end

      prepayments = SKIP unless hash.key?('prepayments')

      # Create object from extracted values.
      PrepaymentsResponse.new(prepayments)
    end
  end
end
