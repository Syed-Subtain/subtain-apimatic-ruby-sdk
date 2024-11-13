# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # ProformaInvoiceTax Model.
  class ProformaInvoiceTax < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :uid

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :title

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :source_type

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :percentage

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :taxable_amount

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :tax_amount

    # TODO: Write general description for this method
    # @return [Array[ProformaInvoiceTaxBreakout]]
    attr_accessor :line_item_breakouts

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['uid'] = 'uid'
      @_hash['title'] = 'title'
      @_hash['source_type'] = 'source_type'
      @_hash['percentage'] = 'percentage'
      @_hash['taxable_amount'] = 'taxable_amount'
      @_hash['tax_amount'] = 'tax_amount'
      @_hash['line_item_breakouts'] = 'line_item_breakouts'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        uid
        title
        source_type
        percentage
        taxable_amount
        tax_amount
        line_item_breakouts
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(uid = SKIP, title = SKIP, source_type = SKIP,
                   percentage = SKIP, taxable_amount = SKIP, tax_amount = SKIP,
                   line_item_breakouts = SKIP)
      @uid = uid unless uid == SKIP
      @title = title unless title == SKIP
      @source_type = source_type unless source_type == SKIP
      @percentage = percentage unless percentage == SKIP
      @taxable_amount = taxable_amount unless taxable_amount == SKIP
      @tax_amount = tax_amount unless tax_amount == SKIP
      @line_item_breakouts = line_item_breakouts unless line_item_breakouts == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      uid = hash.key?('uid') ? hash['uid'] : SKIP
      title = hash.key?('title') ? hash['title'] : SKIP
      source_type = hash.key?('source_type') ? hash['source_type'] : SKIP
      percentage = hash.key?('percentage') ? hash['percentage'] : SKIP
      taxable_amount =
        hash.key?('taxable_amount') ? hash['taxable_amount'] : SKIP
      tax_amount = hash.key?('tax_amount') ? hash['tax_amount'] : SKIP
      # Parameter is an array, so we need to iterate through it
      line_item_breakouts = nil
      unless hash['line_item_breakouts'].nil?
        line_item_breakouts = []
        hash['line_item_breakouts'].each do |structure|
          line_item_breakouts << (ProformaInvoiceTaxBreakout.from_hash(structure) if structure)
        end
      end

      line_item_breakouts = SKIP unless hash.key?('line_item_breakouts')

      # Create object from extracted values.
      ProformaInvoiceTax.new(uid,
                             title,
                             source_type,
                             percentage,
                             taxable_amount,
                             tax_amount,
                             line_item_breakouts)
    end
  end
end
