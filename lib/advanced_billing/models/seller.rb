# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # Seller Model.
  class Seller < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :name

    # TODO: Write general description for this method
    # @return [InvoiceAddress]
    attr_accessor :address

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :phone

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :logo_url

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['address'] = 'address'
      @_hash['phone'] = 'phone'
      @_hash['logo_url'] = 'logo_url'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        name
        address
        phone
        logo_url
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        logo_url
      ]
    end

    def initialize(name = SKIP, address = SKIP, phone = SKIP, logo_url = SKIP)
      @name = name unless name == SKIP
      @address = address unless address == SKIP
      @phone = phone unless phone == SKIP
      @logo_url = logo_url unless logo_url == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash.key?('name') ? hash['name'] : SKIP
      address = InvoiceAddress.from_hash(hash['address']) if hash['address']
      phone = hash.key?('phone') ? hash['phone'] : SKIP
      logo_url = hash.key?('logo_url') ? hash['logo_url'] : SKIP

      # Create object from extracted values.
      Seller.new(name,
                 address,
                 phone,
                 logo_url)
    end

    # Validates an instance of the object from a given value.
    # @param [Seller | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
