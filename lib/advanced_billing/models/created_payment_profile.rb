# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # CreatedPaymentProfile Model.
  class CreatedPaymentProfile < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :first_name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :last_name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :masked_card_number

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :card_type

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :expiration_month

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :expiration_year

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :customer_id

    # The vault that stores the payment profile with the provided `vault_token`.
    # Use `bogus` for testing.
    # @return [CurrentVault]
    attr_accessor :current_vault

    # The vault that stores the payment profile with the provided `vault_token`.
    # Use `bogus` for testing.
    # @return [String]
    attr_accessor :vault_token

    # The vault that stores the payment profile with the provided `vault_token`.
    # Use `bogus` for testing.
    # @return [String]
    attr_accessor :billing_address

    # The vault that stores the payment profile with the provided `vault_token`.
    # Use `bogus` for testing.
    # @return [String]
    attr_accessor :billing_city

    # The vault that stores the payment profile with the provided `vault_token`.
    # Use `bogus` for testing.
    # @return [String]
    attr_accessor :billing_state

    # The vault that stores the payment profile with the provided `vault_token`.
    # Use `bogus` for testing.
    # @return [String]
    attr_accessor :billing_zip

    # The vault that stores the payment profile with the provided `vault_token`.
    # Use `bogus` for testing.
    # @return [String]
    attr_accessor :billing_country

    # The vault that stores the payment profile with the provided `vault_token`.
    # Use `bogus` for testing.
    # @return [String]
    attr_accessor :customer_vault_token

    # The vault that stores the payment profile with the provided `vault_token`.
    # Use `bogus` for testing.
    # @return [String]
    attr_accessor :billing_address_2

    # The vault that stores the payment profile with the provided `vault_token`.
    # Use `bogus` for testing.
    # @return [String]
    attr_accessor :payment_type

    # The vault that stores the payment profile with the provided `vault_token`.
    # Use `bogus` for testing.
    # @return [String]
    attr_accessor :bank_name

    # The vault that stores the payment profile with the provided `vault_token`.
    # Use `bogus` for testing.
    # @return [String]
    attr_accessor :masked_bank_routing_number

    # The vault that stores the payment profile with the provided `vault_token`.
    # Use `bogus` for testing.
    # @return [String]
    attr_accessor :masked_bank_account_number

    # The vault that stores the payment profile with the provided `vault_token`.
    # Use `bogus` for testing.
    # @return [String]
    attr_accessor :bank_account_type

    # The vault that stores the payment profile with the provided `vault_token`.
    # Use `bogus` for testing.
    # @return [String]
    attr_accessor :bank_account_holder_type

    # The vault that stores the payment profile with the provided `vault_token`.
    # Use `bogus` for testing.
    # @return [TrueClass | FalseClass]
    attr_accessor :verified

    # The vault that stores the payment profile with the provided `vault_token`.
    # Use `bogus` for testing.
    # @return [Integer]
    attr_accessor :site_gateway_setting_id

    # The vault that stores the payment profile with the provided `vault_token`.
    # Use `bogus` for testing.
    # @return [String]
    attr_accessor :gateway_handle

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['first_name'] = 'first_name'
      @_hash['last_name'] = 'last_name'
      @_hash['masked_card_number'] = 'masked_card_number'
      @_hash['card_type'] = 'card_type'
      @_hash['expiration_month'] = 'expiration_month'
      @_hash['expiration_year'] = 'expiration_year'
      @_hash['customer_id'] = 'customer_id'
      @_hash['current_vault'] = 'current_vault'
      @_hash['vault_token'] = 'vault_token'
      @_hash['billing_address'] = 'billing_address'
      @_hash['billing_city'] = 'billing_city'
      @_hash['billing_state'] = 'billing_state'
      @_hash['billing_zip'] = 'billing_zip'
      @_hash['billing_country'] = 'billing_country'
      @_hash['customer_vault_token'] = 'customer_vault_token'
      @_hash['billing_address_2'] = 'billing_address_2'
      @_hash['payment_type'] = 'payment_type'
      @_hash['bank_name'] = 'bank_name'
      @_hash['masked_bank_routing_number'] = 'masked_bank_routing_number'
      @_hash['masked_bank_account_number'] = 'masked_bank_account_number'
      @_hash['bank_account_type'] = 'bank_account_type'
      @_hash['bank_account_holder_type'] = 'bank_account_holder_type'
      @_hash['verified'] = 'verified'
      @_hash['site_gateway_setting_id'] = 'site_gateway_setting_id'
      @_hash['gateway_handle'] = 'gateway_handle'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        first_name
        last_name
        masked_card_number
        card_type
        expiration_month
        expiration_year
        customer_id
        current_vault
        vault_token
        billing_address
        billing_city
        billing_state
        billing_zip
        billing_country
        customer_vault_token
        billing_address_2
        payment_type
        bank_name
        masked_bank_routing_number
        masked_bank_account_number
        bank_account_type
        bank_account_holder_type
        verified
        site_gateway_setting_id
        gateway_handle
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        masked_card_number
        customer_vault_token
        billing_address_2
      ]
    end

    def initialize(id = SKIP, first_name = SKIP, last_name = SKIP,
                   masked_card_number = SKIP, card_type = SKIP,
                   expiration_month = SKIP, expiration_year = SKIP,
                   customer_id = SKIP, current_vault = SKIP, vault_token = SKIP,
                   billing_address = SKIP, billing_city = SKIP,
                   billing_state = SKIP, billing_zip = SKIP,
                   billing_country = SKIP, customer_vault_token = SKIP,
                   billing_address_2 = SKIP, payment_type = SKIP,
                   bank_name = SKIP, masked_bank_routing_number = SKIP,
                   masked_bank_account_number = SKIP, bank_account_type = SKIP,
                   bank_account_holder_type = SKIP, verified = SKIP,
                   site_gateway_setting_id = SKIP, gateway_handle = SKIP)
      @id = id unless id == SKIP
      @first_name = first_name unless first_name == SKIP
      @last_name = last_name unless last_name == SKIP
      @masked_card_number = masked_card_number unless masked_card_number == SKIP
      @card_type = card_type unless card_type == SKIP
      @expiration_month = expiration_month unless expiration_month == SKIP
      @expiration_year = expiration_year unless expiration_year == SKIP
      @customer_id = customer_id unless customer_id == SKIP
      @current_vault = current_vault unless current_vault == SKIP
      @vault_token = vault_token unless vault_token == SKIP
      @billing_address = billing_address unless billing_address == SKIP
      @billing_city = billing_city unless billing_city == SKIP
      @billing_state = billing_state unless billing_state == SKIP
      @billing_zip = billing_zip unless billing_zip == SKIP
      @billing_country = billing_country unless billing_country == SKIP
      @customer_vault_token = customer_vault_token unless customer_vault_token == SKIP
      @billing_address_2 = billing_address_2 unless billing_address_2 == SKIP
      @payment_type = payment_type unless payment_type == SKIP
      @bank_name = bank_name unless bank_name == SKIP
      unless masked_bank_routing_number == SKIP
        @masked_bank_routing_number =
          masked_bank_routing_number
      end
      unless masked_bank_account_number == SKIP
        @masked_bank_account_number =
          masked_bank_account_number
      end
      @bank_account_type = bank_account_type unless bank_account_type == SKIP
      @bank_account_holder_type = bank_account_holder_type unless bank_account_holder_type == SKIP
      @verified = verified unless verified == SKIP
      @site_gateway_setting_id = site_gateway_setting_id unless site_gateway_setting_id == SKIP
      @gateway_handle = gateway_handle unless gateway_handle == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      first_name = hash.key?('first_name') ? hash['first_name'] : SKIP
      last_name = hash.key?('last_name') ? hash['last_name'] : SKIP
      masked_card_number =
        hash.key?('masked_card_number') ? hash['masked_card_number'] : SKIP
      card_type = hash.key?('card_type') ? hash['card_type'] : SKIP
      expiration_month =
        hash.key?('expiration_month') ? hash['expiration_month'] : SKIP
      expiration_year =
        hash.key?('expiration_year') ? hash['expiration_year'] : SKIP
      customer_id = hash.key?('customer_id') ? hash['customer_id'] : SKIP
      current_vault = hash.key?('current_vault') ? hash['current_vault'] : SKIP
      vault_token = hash.key?('vault_token') ? hash['vault_token'] : SKIP
      billing_address =
        hash.key?('billing_address') ? hash['billing_address'] : SKIP
      billing_city = hash.key?('billing_city') ? hash['billing_city'] : SKIP
      billing_state = hash.key?('billing_state') ? hash['billing_state'] : SKIP
      billing_zip = hash.key?('billing_zip') ? hash['billing_zip'] : SKIP
      billing_country =
        hash.key?('billing_country') ? hash['billing_country'] : SKIP
      customer_vault_token =
        hash.key?('customer_vault_token') ? hash['customer_vault_token'] : SKIP
      billing_address_2 =
        hash.key?('billing_address_2') ? hash['billing_address_2'] : SKIP
      payment_type = hash.key?('payment_type') ? hash['payment_type'] : SKIP
      bank_name = hash.key?('bank_name') ? hash['bank_name'] : SKIP
      masked_bank_routing_number =
        hash.key?('masked_bank_routing_number') ? hash['masked_bank_routing_number'] : SKIP
      masked_bank_account_number =
        hash.key?('masked_bank_account_number') ? hash['masked_bank_account_number'] : SKIP
      bank_account_type =
        hash.key?('bank_account_type') ? hash['bank_account_type'] : SKIP
      bank_account_holder_type =
        hash.key?('bank_account_holder_type') ? hash['bank_account_holder_type'] : SKIP
      verified = hash.key?('verified') ? hash['verified'] : SKIP
      site_gateway_setting_id =
        hash.key?('site_gateway_setting_id') ? hash['site_gateway_setting_id'] : SKIP
      gateway_handle =
        hash.key?('gateway_handle') ? hash['gateway_handle'] : SKIP

      # Create object from extracted values.
      CreatedPaymentProfile.new(id,
                                first_name,
                                last_name,
                                masked_card_number,
                                card_type,
                                expiration_month,
                                expiration_year,
                                customer_id,
                                current_vault,
                                vault_token,
                                billing_address,
                                billing_city,
                                billing_state,
                                billing_zip,
                                billing_country,
                                customer_vault_token,
                                billing_address_2,
                                payment_type,
                                bank_name,
                                masked_bank_routing_number,
                                masked_bank_account_number,
                                bank_account_type,
                                bank_account_holder_type,
                                verified,
                                site_gateway_setting_id,
                                gateway_handle)
    end
  end
end
