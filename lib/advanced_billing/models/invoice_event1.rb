# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module AdvancedBilling
  # The event data is the data that, when combined with the command, results in
  # the output invoice found in the invoice field.
  class InvoiceEvent1 < BaseModel
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

    # A unique, identifying string that appears on the debit note and in places
    # it is referenced.
    # @return [String]
    attr_accessor :debit_note_number

    # Unique identifier for the debit note. It is generated automatically by
    # Chargify and has the prefix "db_" followed by alphanumeric characters.
    # @return [String]
    attr_accessor :debit_note_uid

    # A nested data structure detailing the method of payment
    # @return [PaymentMethodNestedData]
    attr_accessor :payment_method

    # The Chargify id of the original payment
    # @return [Integer]
    attr_accessor :transaction_id

    # The previous collection method of the invoice.
    # @return [String]
    attr_accessor :from_collection_method

    # The new collection method of the invoice.
    # @return [String]
    attr_accessor :to_collection_method

    # Consolidation level of the invoice, which is applicable to invoice
    # consolidation.  It will hold one of the following values:
    # * "none": A normal invoice with no consolidation.
    # * "child": An invoice segment which has been combined into a consolidated
    # invoice.
    # * "parent": A consolidated invoice, whose contents are composed of invoice
    # segments.
    # "Parent" invoices do not have lines of their own, but they have subtotals
    # and totals which aggregate the member invoice segments.
    # See also the [invoice consolidation
    # documentation](https://chargify.zendesk.com/hc/en-us/articles/440774639183
    # 5).
    # @return [InvoiceConsolidationLevel]
    attr_accessor :consolidation_level

    # The status of the invoice before event occurence. See [Invoice
    # Statuses](https://chargify.zendesk.com/hc/en-us/articles/4407737494171#lin
    # e-item-breakdowns) for more.
    # @return [Status]
    attr_accessor :from_status

    # The status of the invoice after event occurence. See [Invoice
    # Statuses](https://chargify.zendesk.com/hc/en-us/articles/4407737494171#lin
    # e-item-breakdowns) for more.
    # @return [Status]
    attr_accessor :to_status

    # Amount due on the invoice, which is `total_amount - credit_amount -
    # paid_amount`.
    # @return [String]
    attr_accessor :due_amount

    # The invoice total, which is `subtotal_amount - discount_amount +
    # tax_amount`.'
    # @return [String]
    attr_accessor :total_amount

    # If true, credit was created and applied it to the invoice.
    # @return [TrueClass | FalseClass]
    attr_accessor :apply_credit

    # If true, credit was created and applied it to the invoice.
    # @return [CreditNote1]
    attr_accessor :credit_note_attributes

    # The ID of the payment transaction to be refunded.
    # @return [Integer]
    attr_accessor :payment_id

    # The amount of the refund.
    # @return [String]
    attr_accessor :refund_amount

    # The ID of the refund transaction.
    # @return [Integer]
    attr_accessor :refund_id

    # The flag that shows whether the original payment was a prepayment or not
    # @return [TrueClass | FalseClass]
    attr_accessor :prepayment

    # If true, the invoice is an advance invoice.
    # @return [TrueClass | FalseClass]
    attr_accessor :is_advance_invoice

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
      @_hash['debit_note_number'] = 'debit_note_number'
      @_hash['debit_note_uid'] = 'debit_note_uid'
      @_hash['payment_method'] = 'payment_method'
      @_hash['transaction_id'] = 'transaction_id'
      @_hash['from_collection_method'] = 'from_collection_method'
      @_hash['to_collection_method'] = 'to_collection_method'
      @_hash['consolidation_level'] = 'consolidation_level'
      @_hash['from_status'] = 'from_status'
      @_hash['to_status'] = 'to_status'
      @_hash['due_amount'] = 'due_amount'
      @_hash['total_amount'] = 'total_amount'
      @_hash['apply_credit'] = 'apply_credit'
      @_hash['credit_note_attributes'] = 'credit_note_attributes'
      @_hash['payment_id'] = 'payment_id'
      @_hash['refund_amount'] = 'refund_amount'
      @_hash['refund_id'] = 'refund_id'
      @_hash['prepayment'] = 'prepayment'
      @_hash['is_advance_invoice'] = 'is_advance_invoice'
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
        debit_note_number
        debit_note_uid
        payment_method
        transaction_id
        from_collection_method
        to_collection_method
        consolidation_level
        from_status
        to_status
        due_amount
        total_amount
        apply_credit
        credit_note_attributes
        payment_id
        refund_amount
        refund_id
        prepayment
        is_advance_invoice
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(uid = SKIP,
                   credit_note_number = SKIP,
                   credit_note_uid = SKIP,
                   original_amount = SKIP,
                   applied_amount = SKIP,
                   transaction_time = SKIP,
                   memo = SKIP,
                   role = SKIP,
                   consolidated_invoice = SKIP,
                   applied_credit_notes = SKIP,
                   debit_note_number = SKIP,
                   debit_note_uid = SKIP,
                   payment_method = SKIP,
                   transaction_id = SKIP,
                   from_collection_method = SKIP,
                   to_collection_method = SKIP,
                   consolidation_level = SKIP,
                   from_status = SKIP,
                   to_status = SKIP,
                   due_amount = SKIP,
                   total_amount = SKIP,
                   apply_credit = SKIP,
                   credit_note_attributes = SKIP,
                   payment_id = SKIP,
                   refund_amount = SKIP,
                   refund_id = SKIP,
                   prepayment = SKIP,
                   is_advance_invoice = SKIP)
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
      @debit_note_number = debit_note_number unless debit_note_number == SKIP
      @debit_note_uid = debit_note_uid unless debit_note_uid == SKIP
      @payment_method = payment_method unless payment_method == SKIP
      @transaction_id = transaction_id unless transaction_id == SKIP
      @from_collection_method = from_collection_method unless from_collection_method == SKIP
      @to_collection_method = to_collection_method unless to_collection_method == SKIP
      @consolidation_level = consolidation_level unless consolidation_level == SKIP
      @from_status = from_status unless from_status == SKIP
      @to_status = to_status unless to_status == SKIP
      @due_amount = due_amount unless due_amount == SKIP
      @total_amount = total_amount unless total_amount == SKIP
      @apply_credit = apply_credit unless apply_credit == SKIP
      @credit_note_attributes = credit_note_attributes unless credit_note_attributes == SKIP
      @payment_id = payment_id unless payment_id == SKIP
      @refund_amount = refund_amount unless refund_amount == SKIP
      @refund_id = refund_id unless refund_id == SKIP
      @prepayment = prepayment unless prepayment == SKIP
      @is_advance_invoice = is_advance_invoice unless is_advance_invoice == SKIP
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
      debit_note_number =
        hash.key?('debit_note_number') ? hash['debit_note_number'] : SKIP
      debit_note_uid =
        hash.key?('debit_note_uid') ? hash['debit_note_uid'] : SKIP
      payment_method = hash.key?('payment_method') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:InvoiceEvent1PaymentMethod), hash['payment_method']
      ) : SKIP
      transaction_id =
        hash.key?('transaction_id') ? hash['transaction_id'] : SKIP
      from_collection_method =
        hash.key?('from_collection_method') ? hash['from_collection_method'] : SKIP
      to_collection_method =
        hash.key?('to_collection_method') ? hash['to_collection_method'] : SKIP
      consolidation_level =
        hash.key?('consolidation_level') ? hash['consolidation_level'] : SKIP
      from_status = hash.key?('from_status') ? hash['from_status'] : SKIP
      to_status = hash.key?('to_status') ? hash['to_status'] : SKIP
      due_amount = hash.key?('due_amount') ? hash['due_amount'] : SKIP
      total_amount = hash.key?('total_amount') ? hash['total_amount'] : SKIP
      apply_credit = hash.key?('apply_credit') ? hash['apply_credit'] : SKIP
      credit_note_attributes = CreditNote1.from_hash(hash['credit_note_attributes']) if
        hash['credit_note_attributes']
      payment_id = hash.key?('payment_id') ? hash['payment_id'] : SKIP
      refund_amount = hash.key?('refund_amount') ? hash['refund_amount'] : SKIP
      refund_id = hash.key?('refund_id') ? hash['refund_id'] : SKIP
      prepayment = hash.key?('prepayment') ? hash['prepayment'] : SKIP
      is_advance_invoice =
        hash.key?('is_advance_invoice') ? hash['is_advance_invoice'] : SKIP

      # Create object from extracted values.
      InvoiceEvent1.new(uid,
                        credit_note_number,
                        credit_note_uid,
                        original_amount,
                        applied_amount,
                        transaction_time,
                        memo,
                        role,
                        consolidated_invoice,
                        applied_credit_notes,
                        debit_note_number,
                        debit_note_uid,
                        payment_method,
                        transaction_id,
                        from_collection_method,
                        to_collection_method,
                        consolidation_level,
                        from_status,
                        to_status,
                        due_amount,
                        total_amount,
                        apply_credit,
                        credit_note_attributes,
                        payment_id,
                        refund_amount,
                        refund_id,
                        prepayment,
                        is_advance_invoice)
    end

    def to_custom_transaction_time
      DateTimeHelper.to_rfc3339(transaction_time)
    end

    # Validates an instance of the object from a given value.
    # @param [InvoiceEvent1 | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
