
# Invoice Previous Balance

## Structure

`InvoicePreviousBalance`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `capture_date` | `String` | Optional | - |
| `invoices` | [`Array<InvoiceBalanceItem>`](../../doc/models/invoice-balance-item.md) | Optional | - |

## Example (as JSON)

```json
{
  "capture_date": "capture_date2",
  "invoices": [
    {
      "uid": "uid6",
      "number": "number6",
      "outstanding_amount": "outstanding_amount8"
    }
  ]
}
```

