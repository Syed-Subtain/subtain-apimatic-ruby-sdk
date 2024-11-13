# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # ListSaleRepItem Model.
  class ListSaleRepItem < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :full_name

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :subscriptions_count

    # TODO: Write general description for this method
    # @return [Hash[String, SaleRepItemMrr]]
    attr_accessor :mrr_data

    # TODO: Write general description for this method
    # @return [TrueClass | FalseClass]
    attr_accessor :test_mode

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['full_name'] = 'full_name'
      @_hash['subscriptions_count'] = 'subscriptions_count'
      @_hash['mrr_data'] = 'mrr_data'
      @_hash['test_mode'] = 'test_mode'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        full_name
        subscriptions_count
        mrr_data
        test_mode
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(id = SKIP, full_name = SKIP, subscriptions_count = SKIP,
                   mrr_data = SKIP, test_mode = SKIP)
      @id = id unless id == SKIP
      @full_name = full_name unless full_name == SKIP
      @subscriptions_count = subscriptions_count unless subscriptions_count == SKIP
      @mrr_data = mrr_data unless mrr_data == SKIP
      @test_mode = test_mode unless test_mode == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      full_name = hash.key?('full_name') ? hash['full_name'] : SKIP
      subscriptions_count =
        hash.key?('subscriptions_count') ? hash['subscriptions_count'] : SKIP
      mrr_data = SaleRepItemMrr.from_hash(hash['mrr_data']) if hash['mrr_data']

      mrr_data = SKIP unless hash.key?('mrr_data')
      test_mode = hash.key?('test_mode') ? hash['test_mode'] : SKIP

      # Create object from extracted values.
      ListSaleRepItem.new(id,
                          full_name,
                          subscriptions_count,
                          mrr_data,
                          test_mode)
    end
  end
end
