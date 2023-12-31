# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # UpdateSubscriptionRequest Model.
  class UpdateSubscriptionRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [UpdateSubscription]
    attr_accessor :subscription

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['subscription'] = 'subscription'
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

    def initialize(subscription = nil)
      @subscription = subscription
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      subscription = UpdateSubscription.from_hash(hash['subscription']) if hash['subscription']

      # Create object from extracted values.
      UpdateSubscriptionRequest.new(subscription)
    end
  end
end
