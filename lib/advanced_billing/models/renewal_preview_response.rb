# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # RenewalPreviewResponse Model.
  class RenewalPreviewResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [RenewalPreview]
    attr_accessor :renewal_preview

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['renewal_preview'] = 'renewal_preview'
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

    def initialize(renewal_preview = nil)
      @renewal_preview = renewal_preview
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      renewal_preview = RenewalPreview.from_hash(hash['renewal_preview']) if
        hash['renewal_preview']

      # Create object from extracted values.
      RenewalPreviewResponse.new(renewal_preview)
    end
  end
end
