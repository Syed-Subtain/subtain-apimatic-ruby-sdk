# API Exports

```ruby
api_exports_controller = client.api_exports
```

## Class Name

`APIExportsController`

## Methods

* [Export Invoices](../../doc/controllers/api-exports.md#export-invoices)
* [List Exported Proforma Invoices](../../doc/controllers/api-exports.md#list-exported-proforma-invoices)
* [Read Proforma Invoices Export](../../doc/controllers/api-exports.md#read-proforma-invoices-export)
* [Read Subscriptions Export](../../doc/controllers/api-exports.md#read-subscriptions-export)
* [List Exported Subscriptions](../../doc/controllers/api-exports.md#list-exported-subscriptions)
* [List Exported Invoices](../../doc/controllers/api-exports.md#list-exported-invoices)
* [Export Proforma Invoices](../../doc/controllers/api-exports.md#export-proforma-invoices)
* [Read Invoices Export](../../doc/controllers/api-exports.md#read-invoices-export)
* [Export Subscriptions](../../doc/controllers/api-exports.md#export-subscriptions)


# Export Invoices

This API creates an invoices export and returns a batchjob object.

```ruby
def export_invoices
```

## Response Type

[`BatchJobResponse`](../../doc/models/batch-job-response.md)

## Example Usage

```ruby
result = api_exports_controller.export_invoices
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 404 | Not Found | `APIException` |
| 409 | Conflict | [`SingleErrorResponseException`](../../doc/models/single-error-response-exception.md) |


# List Exported Proforma Invoices

This API returns an array of exported proforma invoices for a provided `batch_id`. Pay close attention to pagination in order to control responses from the server.

Example: `GET https://{subdomain}.chargify.com/api_exports/proforma_invoices/123/rows?per_page=10000&page=1`.

```ruby
def list_exported_proforma_invoices(options = {})
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `batch_id` | `String` | Template, Required | Id of a Batch Job. |
| `per_page` | `Integer` | Query, Optional | This parameter indicates how many records to fetch in each request.<br>Default value is 100.<br>The maximum allowed values is 10000; any per_page value over 10000 will be changed to 10000.<br>**Default**: `100`<br>**Constraints**: `>= 1`, `<= 10000` |
| `page` | `Integer` | Query, Optional | Result records are organized in pages. By default, the first page of results is displayed. The page parameter specifies a page number of results to fetch. You can start navigating through the pages to consume the results. You do this by passing in a page parameter. Retrieve the next page by adding ?page=2 to the query string. If there are no results to return, then an empty result set will be returned.<br>Use in query `page=1`.<br>**Default**: `1`<br>**Constraints**: `>= 1` |

## Response Type

[`Array<ProformaInvoice>`](../../doc/models/proforma-invoice.md)

## Example Usage

```ruby
collect = {
  'batch_id' => 'batch_id8',
  'per_page' => 100,
  'page' => 2
}

result = api_exports_controller.list_exported_proforma_invoices(collect)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 404 | Not Found | `APIException` |


# Read Proforma Invoices Export

This API returns a batchjob object for proforma invoices export.

```ruby
def read_proforma_invoices_export(batch_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `batch_id` | `String` | Template, Required | Id of a Batch Job. |

## Response Type

[`BatchJobResponse`](../../doc/models/batch-job-response.md)

## Example Usage

```ruby
batch_id = 'batch_id8'

result = api_exports_controller.read_proforma_invoices_export(batch_id)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 404 | Not Found | `APIException` |


# Read Subscriptions Export

This API returns a batchjob object for subscriptions export.

```ruby
def read_subscriptions_export(batch_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `batch_id` | `String` | Template, Required | Id of a Batch Job. |

## Response Type

[`BatchJobResponse`](../../doc/models/batch-job-response.md)

## Example Usage

```ruby
batch_id = 'batch_id8'

result = api_exports_controller.read_subscriptions_export(batch_id)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 404 | Not Found | `APIException` |


# List Exported Subscriptions

This API returns an array of exported subscriptions for a provided `batch_id`. Pay close attention to pagination in order to control responses from the server.

Example: `GET https://{subdomain}.chargify.com/api_exports/subscriptions/123/rows?per_page=200&page=1`.

```ruby
def list_exported_subscriptions(options = {})
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `batch_id` | `String` | Template, Required | Id of a Batch Job. |
| `per_page` | `Integer` | Query, Optional | This parameter indicates how many records to fetch in each request.<br>Default value is 100.<br>The maximum allowed values is 10000; any per_page value over 10000 will be changed to 10000.<br>**Default**: `100`<br>**Constraints**: `>= 1`, `<= 10000` |
| `page` | `Integer` | Query, Optional | Result records are organized in pages. By default, the first page of results is displayed. The page parameter specifies a page number of results to fetch. You can start navigating through the pages to consume the results. You do this by passing in a page parameter. Retrieve the next page by adding ?page=2 to the query string. If there are no results to return, then an empty result set will be returned.<br>Use in query `page=1`.<br>**Default**: `1`<br>**Constraints**: `>= 1` |

## Response Type

[`Array<Subscription>`](../../doc/models/subscription.md)

## Example Usage

```ruby
collect = {
  'batch_id' => 'batch_id8',
  'per_page' => 100,
  'page' => 2
}

result = api_exports_controller.list_exported_subscriptions(collect)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 404 | Not Found | `APIException` |


# List Exported Invoices

This API returns an array of exported invoices for a provided `batch_id`. Pay close attention to pagination in order to control responses from the server.

Example: `GET https://{subdomain}.chargify.com/api_exports/invoices/123/rows?per_page=10000&page=1`.

```ruby
def list_exported_invoices(options = {})
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `batch_id` | `String` | Template, Required | Id of a Batch Job. |
| `per_page` | `Integer` | Query, Optional | This parameter indicates how many records to fetch in each request.<br>Default value is 100.<br>The maximum allowed values is 10000; any per_page value over 10000 will be changed to 10000.<br>**Default**: `100`<br>**Constraints**: `>= 1`, `<= 10000` |
| `page` | `Integer` | Query, Optional | Result records are organized in pages. By default, the first page of results is displayed. The page parameter specifies a page number of results to fetch. You can start navigating through the pages to consume the results. You do this by passing in a page parameter. Retrieve the next page by adding ?page=2 to the query string. If there are no results to return, then an empty result set will be returned.<br>Use in query `page=1`.<br>**Default**: `1`<br>**Constraints**: `>= 1` |

## Response Type

[`Array<Invoice>`](../../doc/models/invoice.md)

## Example Usage

```ruby
collect = {
  'batch_id' => 'batch_id8',
  'per_page' => 100,
  'page' => 2
}

result = api_exports_controller.list_exported_invoices(collect)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 404 | Not Found | `APIException` |


# Export Proforma Invoices

This API creates a proforma invoices export and returns a batchjob object.

It is only available for Relationship Invoicing architecture.

```ruby
def export_proforma_invoices
```

## Response Type

[`BatchJobResponse`](../../doc/models/batch-job-response.md)

## Example Usage

```ruby
result = api_exports_controller.export_proforma_invoices
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 404 | Not Found | `APIException` |
| 409 | Conflict | [`SingleErrorResponseException`](../../doc/models/single-error-response-exception.md) |


# Read Invoices Export

This API returns a batchjob object for invoices export.

```ruby
def read_invoices_export(batch_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `batch_id` | `String` | Template, Required | Id of a Batch Job. |

## Response Type

[`BatchJobResponse`](../../doc/models/batch-job-response.md)

## Example Usage

```ruby
batch_id = 'batch_id8'

result = api_exports_controller.read_invoices_export(batch_id)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 404 | Not Found | `APIException` |


# Export Subscriptions

This API creates a subscriptions export and returns a batchjob object.

```ruby
def export_subscriptions
```

## Response Type

[`BatchJobResponse`](../../doc/models/batch-job-response.md)

## Example Usage

```ruby
result = api_exports_controller.export_subscriptions
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 409 | Conflict | [`SingleErrorResponseException`](../../doc/models/single-error-response-exception.md) |

