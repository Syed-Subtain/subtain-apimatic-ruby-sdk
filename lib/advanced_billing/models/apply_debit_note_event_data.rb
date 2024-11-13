# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # Example schema for an `apply_debit_note` event
  class ApplyDebitNoteEventData < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # A unique, identifying string that appears on the debit note and in places
    # it is referenced.
    # @return [String]
    attr_accessor :debit_note_number

    # Unique identifier for the debit note. It is generated automatically by
    # Chargify and has the prefix "db_" followed by alphanumeric characters.
    # @return [String]
    attr_accessor :debit_note_uid

    # The full, original amount of the debit note.
    # @return [String]
    attr_accessor :original_amount

    # The amount of the debit note applied to invoice.
    # @return [String]
    attr_accessor :applied_amount

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['debit_note_number'] = 'debit_note_number'
      @_hash['debit_note_uid'] = 'debit_note_uid'
      @_hash['original_amount'] = 'original_amount'
      @_hash['applied_amount'] = 'applied_amount'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        debit_note_number
        debit_note_uid
        original_amount
        applied_amount
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(debit_note_number = SKIP, debit_note_uid = SKIP,
                   original_amount = SKIP, applied_amount = SKIP)
      @debit_note_number = debit_note_number unless debit_note_number == SKIP
      @debit_note_uid = debit_note_uid unless debit_note_uid == SKIP
      @original_amount = original_amount unless original_amount == SKIP
      @applied_amount = applied_amount unless applied_amount == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      debit_note_number =
        hash.key?('debit_note_number') ? hash['debit_note_number'] : SKIP
      debit_note_uid =
        hash.key?('debit_note_uid') ? hash['debit_note_uid'] : SKIP
      original_amount =
        hash.key?('original_amount') ? hash['original_amount'] : SKIP
      applied_amount =
        hash.key?('applied_amount') ? hash['applied_amount'] : SKIP

      # Create object from extracted values.
      ApplyDebitNoteEventData.new(debit_note_number,
                                  debit_note_uid,
                                  original_amount,
                                  applied_amount)
    end

    # Validates an instance of the object from a given value.
    # @param [ApplyDebitNoteEventData | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
