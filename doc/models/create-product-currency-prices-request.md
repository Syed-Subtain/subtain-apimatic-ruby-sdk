
# Create Product Currency Prices Request

## Structure

`CreateProductCurrencyPricesRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `currency_prices` | [`Array<CreateProductCurrencyPrice>`](../../doc/models/create-product-currency-price.md) | Required | - |

## Example (as JSON)

```json
{
  "currency_prices": [
    {
      "currency": "currency8",
      "price": 78,
      "role": "initial"
    }
  ]
}
```

