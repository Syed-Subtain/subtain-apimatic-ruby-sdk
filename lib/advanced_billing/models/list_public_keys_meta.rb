# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # ListPublicKeysMeta Model.
  class ListPublicKeysMeta < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :total_count

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :current_page

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :total_pages

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :per_page

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['total_count'] = 'total_count'
      @_hash['current_page'] = 'current_page'
      @_hash['total_pages'] = 'total_pages'
      @_hash['per_page'] = 'per_page'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        total_count
        current_page
        total_pages
        per_page
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(total_count = SKIP, current_page = SKIP, total_pages = SKIP,
                   per_page = SKIP)
      @total_count = total_count unless total_count == SKIP
      @current_page = current_page unless current_page == SKIP
      @total_pages = total_pages unless total_pages == SKIP
      @per_page = per_page unless per_page == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      total_count = hash.key?('total_count') ? hash['total_count'] : SKIP
      current_page = hash.key?('current_page') ? hash['current_page'] : SKIP
      total_pages = hash.key?('total_pages') ? hash['total_pages'] : SKIP
      per_page = hash.key?('per_page') ? hash['per_page'] : SKIP

      # Create object from extracted values.
      ListPublicKeysMeta.new(total_count,
                             current_page,
                             total_pages,
                             per_page)
    end
  end
end
