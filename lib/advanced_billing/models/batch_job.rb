# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # BatchJob Model.
  class BatchJob < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :finished_at

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :row_count

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :created_at

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :completed

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['finished_at'] = 'finished_at'
      @_hash['row_count'] = 'row_count'
      @_hash['created_at'] = 'created_at'
      @_hash['completed'] = 'completed'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        finished_at
        row_count
        created_at
        completed
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        finished_at
        row_count
        created_at
      ]
    end

    def initialize(id = SKIP, finished_at = SKIP, row_count = SKIP,
                   created_at = SKIP, completed = SKIP)
      @id = id unless id == SKIP
      @finished_at = finished_at unless finished_at == SKIP
      @row_count = row_count unless row_count == SKIP
      @created_at = created_at unless created_at == SKIP
      @completed = completed unless completed == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      finished_at = hash.key?('finished_at') ? hash['finished_at'] : SKIP
      row_count = hash.key?('row_count') ? hash['row_count'] : SKIP
      created_at = hash.key?('created_at') ? hash['created_at'] : SKIP
      completed = hash.key?('completed') ? hash['completed'] : SKIP

      # Create object from extracted values.
      BatchJob.new(id,
                   finished_at,
                   row_count,
                   created_at,
                   completed)
    end
  end
end
