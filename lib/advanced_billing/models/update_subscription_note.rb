# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # Updatable fields for Subscription Note
  class UpdateSubscriptionNote < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :body

    # TODO: Write general description for this method
    # @return [TrueClass | FalseClass]
    attr_accessor :sticky

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['body'] = 'body'
      @_hash['sticky'] = 'sticky'
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

    def initialize(body = nil, sticky = nil)
      @body = body
      @sticky = sticky
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      body = hash.key?('body') ? hash['body'] : nil
      sticky = hash.key?('sticky') ? hash['sticky'] : nil

      # Create object from extracted values.
      UpdateSubscriptionNote.new(body,
                                 sticky)
    end
  end
end
