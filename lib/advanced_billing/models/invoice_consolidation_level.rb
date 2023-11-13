# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # Consolidation level of the invoice, which is applicable to invoice
  # consolidation.  It will hold one of the following values: * "none": A normal
  # invoice with no consolidation. * "child": An invoice segment which has been
  # combined into a consolidated invoice. * "parent": A consolidated invoice,
  # whose contents are composed of invoice segments. "Parent" invoices do not
  # have lines of their own, but they have subtotals and totals which aggregate
  # the member invoice segments. See also the [invoice consolidation
  # documentation](https://chargify.zendesk.com/hc/en-us/articles/4407746391835)
  # .
  class InvoiceConsolidationLevel
    INVOICE_CONSOLIDATION_LEVEL = [
      # TODO: Write general description for NONE
      NONE = 'none'.freeze,

      # TODO: Write general description for CHILD
      CHILD = 'child'.freeze,

      # TODO: Write general description for PARENT
      PARENT = 'parent'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      INVOICE_CONSOLIDATION_LEVEL.include?(value)
    end
  end
end
