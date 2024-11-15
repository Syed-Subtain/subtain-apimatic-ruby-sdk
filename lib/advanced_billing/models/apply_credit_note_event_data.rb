# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module AdvancedBilling
  # Example schema for an `apply_credit_note` event
  class ApplyCreditNoteEventData < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Unique identifier for the credit note application. It is generated
    # automatically by Chargify and has the prefix "cdt_" followed by
    # alphanumeric characters.
    # @return [String]
    attr_accessor :uid

    # A unique, identifying string that appears on the credit note and in places
    # it is referenced.
    # @return [String]
    attr_accessor :credit_note_number

    # Unique identifier for the credit note. It is generated automatically by
    # Chargify and has the prefix "cn_" followed by alphanumeric characters.
    # @return [String]
    attr_accessor :credit_note_uid

    # The full, original amount of the credit note.
    # @return [String]
    attr_accessor :original_amount

    # The amount of the credit note applied to invoice.
    # @return [String]
    attr_accessor :applied_amount

    # The time the credit note was applied, in ISO 8601 format, i.e.
    # "2019-06-07T17:20:06Z"
    # @return [DateTime]
    attr_accessor :transaction_time

    # The credit note memo.
    # @return [String]
    attr_accessor :memo

    # The role of the credit note (e.g. 'general')
    # @return [String]
    attr_accessor :role

    # Shows whether it was applied to consolidated invoice or not
    # @return [TrueClass | FalseClass]
    attr_accessor :consolidated_invoice

    # List of credit notes applied to children invoices (if consolidated
    # invoice)
    # @return [Array[AppliedCreditNote]]
    attr_accessor :applied_credit_notes

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['uid'] = 'uid'
      @_hash['credit_note_number'] = 'credit_note_number'
      @_hash['credit_note_uid'] = 'credit_note_uid'
      @_hash['original_amount'] = 'original_amount'
      @_hash['applied_amount'] = 'applied_amount'
      @_hash['transaction_time'] = 'transaction_time'
      @_hash['memo'] = 'memo'
      @_hash['role'] = 'role'
      @_hash['consolidated_invoice'] = 'consolidated_invoice'
      @_hash['applied_credit_notes'] = 'applied_credit_notes'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        uid
        credit_note_number
        credit_note_uid
        original_amount
        applied_amount
        transaction_time
        memo
        role
        consolidated_invoice
        applied_credit_notes
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(uid = SKIP, credit_note_number = SKIP,
                   credit_note_uid = SKIP, original_amount = SKIP,
                   applied_amount = SKIP, transaction_time = SKIP, memo = SKIP,
                   role = SKIP, consolidated_invoice = SKIP,
                   applied_credit_notes = SKIP)
      @uid = uid unless uid == SKIP
      @credit_note_number = credit_note_number unless credit_note_number == SKIP
      @credit_note_uid = credit_note_uid unless credit_note_uid == SKIP
      @original_amount = original_amount unless original_amount == SKIP
      @applied_amount = applied_amount unless applied_amount == SKIP
      @transaction_time = transaction_time unless transaction_time == SKIP
      @memo = memo unless memo == SKIP
      @role = role unless role == SKIP
      @consolidated_invoice = consolidated_invoice unless consolidated_invoice == SKIP
      @applied_credit_notes = applied_credit_notes unless applied_credit_notes == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      uid = hash.key?('uid') ? hash['uid'] : SKIP
      credit_note_number =
        hash.key?('credit_note_number') ? hash['credit_note_number'] : SKIP
      credit_note_uid =
        hash.key?('credit_note_uid') ? hash['credit_note_uid'] : SKIP
      original_amount =
        hash.key?('original_amount') ? hash['original_amount'] : SKIP
      applied_amount =
        hash.key?('applied_amount') ? hash['applied_amount'] : SKIP
      transaction_time = if hash.key?('transaction_time')
                           (DateTimeHelper.from_rfc3339(hash['transaction_time']) if hash['transaction_time'])
                         else
                           SKIP
                         end
      memo = hash.key?('memo') ? hash['memo'] : SKIP
      role = hash.key?('role') ? hash['role'] : SKIP
      consolidated_invoice =
        hash.key?('consolidated_invoice') ? hash['consolidated_invoice'] : SKIP
      # Parameter is an array, so we need to iterate through it
      applied_credit_notes = nil
      unless hash['applied_credit_notes'].nil?
        applied_credit_notes = []
        hash['applied_credit_notes'].each do |structure|
          applied_credit_notes << (AppliedCreditNote.from_hash(structure) if structure)
        end
      end

      applied_credit_notes = SKIP unless hash.key?('applied_credit_notes')

      # Create object from extracted values.
      ApplyCreditNoteEventData.new(uid,
                                   credit_note_number,
                                   credit_note_uid,
                                   original_amount,
                                   applied_amount,
                                   transaction_time,
                                   memo,
                                   role,
                                   consolidated_invoice,
                                   applied_credit_notes)
    end

    def to_custom_transaction_time
      DateTimeHelper.to_rfc3339(transaction_time)
    end

    # Validates an instance of the object from a given value.
    # @param [ApplyCreditNoteEventData | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
