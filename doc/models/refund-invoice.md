
# Refund Invoice

Refund an invoice or a segment of a consolidated invoice.

## Structure

`RefundInvoice`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `amount` | `String` | Required | The amount to be refunded in decimal format as a string. Example: "10.50". Must not exceed the remaining refundable balance of the payment. |
| `memo` | `String` | Required | A description that will be attached to the refund |
| `payment_id` | `Integer` | Required | The ID of the payment to be refunded |
| `external` | `TrueClass \| FalseClass` | Optional | Flag that marks refund as external (no money is returned to the customer). Defaults to `false`. |
| `apply_credit` | `TrueClass \| FalseClass` | Optional | If set to true, creates credit and applies it to an invoice. Defaults to `false`. |
| `void_invoice` | `TrueClass \| FalseClass` | Optional | If `apply_credit` set to false and refunding full amount, if `void_invoice` set to true, invoice will be voided after refund. Defaults to `false`. |

## Example (as JSON)

```json
{
  "amount": "amount8",
  "memo": "memo0",
  "payment_id": 0,
  "external": false,
  "apply_credit": false,
  "void_invoice": false
}
```

