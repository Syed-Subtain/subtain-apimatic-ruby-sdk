# Custom Fields

```ruby
custom_fields_controller = client.custom_fields
```

## Class Name

`CustomFieldsController`

## Methods

* [Create Metafields](../../doc/controllers/custom-fields.md#create-metafields)
* [Delete Metafield](../../doc/controllers/custom-fields.md#delete-metafield)
* [Read Metadata](../../doc/controllers/custom-fields.md#read-metadata)
* [Update Metafield](../../doc/controllers/custom-fields.md#update-metafield)
* [Create Metadata](../../doc/controllers/custom-fields.md#create-metadata)
* [Update Metadata](../../doc/controllers/custom-fields.md#update-metadata)
* [Delete Metadata](../../doc/controllers/custom-fields.md#delete-metadata)
* [List Metadata](../../doc/controllers/custom-fields.md#list-metadata)
* [List Metafields](../../doc/controllers/custom-fields.md#list-metafields)


# Create Metafields

## Custom Fields: Metafield Intro

**Chargify refers to Custom Fields in the API documentation as metafields and metadata.** Within the Chargify UI, metadata and metafields are grouped together under the umbrella of "Custom Fields." All of our UI-based documentation that references custom fields will not cite the terminology metafields or metadata.

+ **Metafield is the custom field**
+ **Metadata is the data populating the custom field.**

Chargify Metafields are used to add meaningful attributes to subscription and customer resources. Full documentation on how to create Custom Fields in the Chargify UI can be located [here](https://maxio-chargify.zendesk.com/hc/en-us/articles/5405332553613-Custom-Fields-Reference). For additional documentation on how to record data within custom fields, please see our subscription-based documentation [here.](https://maxio-chargify.zendesk.com/hc/en-us/articles/5404434903181-Subscription-Summary#custom-fields)

Metafield are the place where you will set up your resource to accept additional data. It is scoped to the site instead of a specific customer or subscription. Think of it as the key, and Metadata as the value on every record.

## Create Metafields

Use this endpoint to create metafields for your Site. Metafields can be populated with metadata after the fact.

Each site is limited to 100 unique Metafields (i.e. keys, or names) per resource. This means you can have 100 Metafields for Subscription and another 100 for Customer.

### Metafields "On-the-Fly"

It is possible to create Metafields “on the fly” when you create your Metadata – if a non-existant name is passed when creating Metadata, a Metafield for that key will be automatically created. The Metafield API, however, gives you more control over your “keys”.

### Metafield Scope Warning

If configuring metafields in the Admin UI or via the API, be careful sending updates to metafields with the scope attribute – **if a partial update is sent it will overwrite the current configuration**.

```ruby
def create_metafields(resource_type,
                      body: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `resource_type` | [`ResourceType`](../../doc/models/resource-type.md) | Template, Required | the resource type to which the metafields belong |
| `body` | [`CreateMetafieldsRequest`](../../doc/models/create-metafields-request.md) | Body, Optional | - |

## Response Type

[`Array<Metafield>`](../../doc/models/metafield.md)

## Example Usage

```ruby
resource_type = ResourceType::SUBSCRIPTIONS

body = CreateMetafieldsRequest.new(
  CreateMetafield.new(
    nil,
    'Dropdown field',
    MetafieldScope.new(
      nil,
      nil,
      nil,
      nil,
      IncludeOption::INCLUDE,
      IncludeOption::INCLUDE
    ),
    MetafieldInput::DROPDOWN,
    [
      'option 1',
      'option 2'
    ]
  )
)

result = custom_fields_controller.create_metafields(
  resource_type,
  body: body
)
```

## Example Response *(as JSON)*

```json
[
  {
    "name": "Color",
    "scope": {
      "hosted": [],
      "csv": "0",
      "statements": "0",
      "invoices": "0",
      "portal": "0"
    },
    "data_count": 0,
    "input_type": "text",
    "enum": null
  },
  {
    "name": "Brand",
    "scope": {
      "hosted": [],
      "csv": "0",
      "statements": "0",
      "invoices": "0",
      "portal": "0"
    },
    "data_count": 0,
    "input_type": "text",
    "enum": null
  }
]
```


# Delete Metafield

Use the following method to delete a metafield. This will remove the metafield from the Site.

Additionally, this will remove the metafield and associated metadata with all Subscriptions on the Site.

```ruby
def delete_metafield(resource_type,
                     name: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `resource_type` | [`ResourceType`](../../doc/models/resource-type.md) | Template, Required | the resource type to which the metafields belong |
| `name` | `String` | Query, Optional | The name of the metafield to be deleted |

## Response Type

`void`

## Example Usage

```ruby
resource_type = ResourceType::SUBSCRIPTIONS

custom_fields_controller.delete_metafield(resource_type)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 404 | Not Found | `APIException` |


# Read Metadata

This request will list all of the metadata belonging to a particular resource (ie. subscription, customer) that is specified.

## Metadata Data

This endpoint will also display the current stats of your metadata to use as a tool for pagination.

```ruby
def read_metadata(options = {})
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `resource_type` | [`ResourceType`](../../doc/models/resource-type.md) | Template, Required | the resource type to which the metafields belong |
| `resource_id` | `String` | Template, Required | The Chargify id of the customer or the subscription for which the metadata applies |
| `page` | `Integer` | Query, Optional | Result records are organized in pages. By default, the first page of results is displayed. The page parameter specifies a page number of results to fetch. You can start navigating through the pages to consume the results. You do this by passing in a page parameter. Retrieve the next page by adding ?page=2 to the query string. If there are no results to return, then an empty result set will be returned.<br>Use in query `page=1`.<br>**Default**: `1`<br>**Constraints**: `>= 1` |
| `per_page` | `Integer` | Query, Optional | This parameter indicates how many records to fetch in each request. Default value is 20. The maximum allowed values is 200; any per_page value over 200 will be changed to 200.<br>Use in query `per_page=200`.<br>**Default**: `20`<br>**Constraints**: `<= 200` |

## Response Type

[`PaginatedMetadata`](../../doc/models/paginated-metadata.md)

## Example Usage

```ruby
collect = {
  'resource_type' => ResourceType::SUBSCRIPTIONS,
  'resource_id' => 'resource_id4',
  'page' => 2,
  'per_page' => 50
}

result = custom_fields_controller.read_metadata(collect)
```


# Update Metafield

Use the following method to update metafields for your Site. Metafields can be populated with metadata after the fact.

```ruby
def update_metafield(resource_type,
                     name,
                     current_name: nil,
                     body: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `resource_type` | [`ResourceType`](../../doc/models/resource-type.md) | Template, Required | the resource type to which the metafields belong |
| `name` | `String` | Query, Required | Name of the custom field. |
| `current_name` | `String` | Query, Optional | This only applies when you are updating an existing record and you wish to rename the field. Note you must supply name and current_name to rename the field |
| `body` | [`UpdateMetafieldsRequest`](../../doc/models/update-metafields-request.md) | Body, Optional | - |

## Response Type

[`Array<Metafield>`](../../doc/models/metafield.md)

## Example Usage

```ruby
resource_type = ResourceType::SUBSCRIPTIONS

name = 'name0'

result = custom_fields_controller.update_metafield(
  resource_type,
  name
)
```


# Create Metadata

## Custom Fields: Metadata Intro

**Chargify refers to Custom Fields in the API documentation as metafields and metadata.** Within the Chargify UI, metadata and metafields are grouped together under the umbrella of "Custom Fields." All of our UI-based documentation that references custom fields will not cite the terminology metafields or metadata.

+ **Metafield is the custom field**
+ **Metadata is the data populating the custom field.**

Chargify Metafields are used to add meaningful attributes to subscription and customer resources. Full documentation on how to create Custom Fields in the Chargify UI can be located [here](https://chargify.zendesk.com/hc/en-us/articles/4407659856411). For additional documentation on how to record data within custom fields, please see our subscription-based documentation [here.](https://chargify.zendesk.com/hc/en-us/articles/4407884887835#custom-fields)

Metadata is associated to a customer or subscription, and corresponds to a Metafield. When creating a new metadata object for a given record, **if the metafield is not present it will be created**.

## Metadata limits

Metadata values are limited to 2kB in size. Additonally, there are limits on the number of unique metafields available per resource.

## Create Metadata

This method will create a metafield for the site on the fly if it does not already exist, and populate the metadata value.

### Subscription or Customer Resource

Please pay special attention to the resource you use when creating metadata.

```ruby
def create_metadata(resource_type,
                    resource_id,
                    value: nil,
                    body: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `resource_type` | [`ResourceType`](../../doc/models/resource-type.md) | Template, Required | the resource type to which the metafields belong |
| `resource_id` | `String` | Template, Required | The Chargify id of the customer or the subscription for which the metadata applies |
| `value` | `String` | Query, Optional | Can be a single item or a list of metadata |
| `body` | [`CreateMetadataRequest`](../../doc/models/create-metadata-request.md) | Body, Optional | - |

## Response Type

[`Array<Metadata>`](../../doc/models/metadata.md)

## Example Usage

```ruby
resource_type = ResourceType::SUBSCRIPTIONS

resource_id = 'resource_id4'

body = CreateMetadataRequest.new(
  [
    CreateMetadata.new(
      'Color',
      'Blue'
    ),
    CreateMetadata.new(
      'Something',
      'Useful'
    )
  ]
)

result = custom_fields_controller.create_metadata(
  resource_type,
  resource_id,
  body: body
)
```


# Update Metadata

This method allows you to update the existing metadata associated with a subscription or customer.

```ruby
def update_metadata(resource_type,
                    resource_id,
                    value: nil,
                    body: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `resource_type` | [`ResourceType`](../../doc/models/resource-type.md) | Template, Required | the resource type to which the metafields belong |
| `resource_id` | `String` | Template, Required | The Chargify id of the customer or the subscription for which the metadata applies |
| `value` | `String` | Query, Optional | Can be a single item or a list of metadata |
| `body` | [`UpdateMetadataRequest`](../../doc/models/update-metadata-request.md) | Body, Optional | - |

## Response Type

[`Array<Metadata>`](../../doc/models/metadata.md)

## Example Usage

```ruby
resource_type = ResourceType::SUBSCRIPTIONS

resource_id = 'resource_id4'

result = custom_fields_controller.update_metadata(
  resource_type,
  resource_id
)
```


# Delete Metadata

This method removes the metadata from the subscriber/customer cited.

## Query String Usage

For instance if you wanted to delete the metadata for customer 99 named weight you would request:

```
https://acme.chargify.com/customers/99/metadata.json?name=weight
```

If you want to delete multiple metadata fields for a customer 99 named: `weight` and `age` you wrould request:

```
https://acme.chargify.com/customers/99/metadata.json?names[]=weight&names[]=age
```

## Successful Response

For a success, there will be a code `200` and the plain text response `true`.

## Unsuccessful Response

When a failed response is encountered, you will receive a `404` response and the plain text response of `true`.

```ruby
def delete_metadata(resource_type,
                    resource_id,
                    name: nil,
                    names: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `resource_type` | [`ResourceType`](../../doc/models/resource-type.md) | Template, Required | the resource type to which the metafields belong |
| `resource_id` | `String` | Template, Required | The Chargify id of the customer or the subscription for which the metadata applies |
| `name` | `String` | Query, Optional | Name of field to be removed. |
| `names` | `Array<String>` | Query, Optional | Names of fields to be removed. Use in query: `names[]=field1&names[]=my-field&names[]=another-field`. |

## Response Type

`void`

## Example Usage

```ruby
resource_type = ResourceType::SUBSCRIPTIONS

resource_id = 'resource_id4'

Liquid error: Value cannot be null. (Parameter 'key')Liquid error: Value cannot be null. (Parameter 'key')custom_fields_controller.delete_metadata(
  resource_type,
  resource_id
)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 404 | Not Found | `APIException` |


# List Metadata

This method will provide you information on usage of metadata across your selected resource (ie. subscriptions, customers)

## Metadata Data

This endpoint will also display the current stats of your metadata to use as a tool for pagination.

### Metadata for multiple records

`https://acme.chargify.com/subscriptions/metadata.json?resource_ids[]=1&resource_ids[]=2`

## Read Metadata for a Site

This endpoint will list the number of pages of metadata information that are contained within a site.

```ruby
def list_metadata(options = {})
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `resource_type` | [`ResourceType`](../../doc/models/resource-type.md) | Template, Required | the resource type to which the metafields belong |
| `page` | `Integer` | Query, Optional | Result records are organized in pages. By default, the first page of results is displayed. The page parameter specifies a page number of results to fetch. You can start navigating through the pages to consume the results. You do this by passing in a page parameter. Retrieve the next page by adding ?page=2 to the query string. If there are no results to return, then an empty result set will be returned.<br>Use in query `page=1`.<br>**Default**: `1`<br>**Constraints**: `>= 1` |
| `per_page` | `Integer` | Query, Optional | This parameter indicates how many records to fetch in each request. Default value is 20. The maximum allowed values is 200; any per_page value over 200 will be changed to 200.<br>Use in query `per_page=200`.<br>**Default**: `20`<br>**Constraints**: `<= 200` |
| `date_field` | [`BasicDateField`](../../doc/models/basic-date-field.md) | Query, Optional | The type of filter you would like to apply to your search. |
| `start_date` | `String` | Query, Optional | The start date (format YYYY-MM-DD) with which to filter the date_field. Returns metadata with a timestamp at or after midnight (12:00:00 AM) in your site’s time zone on the date specified. |
| `end_date` | `String` | Query, Optional | The end date (format YYYY-MM-DD) with which to filter the date_field. Returns metadata with a timestamp up to and including 11:59:59PM in your site’s time zone on the date specified. |
| `start_datetime` | `String` | Query, Optional | The start date and time (format YYYY-MM-DD HH:MM:SS) with which to filter the date_field. Returns metadata with a timestamp at or after exact time provided in query. You can specify timezone in query - otherwise your site's time zone will be used. If provided, this parameter will be used instead of start_date. |
| `end_datetime` | `String` | Query, Optional | The end date and time (format YYYY-MM-DD HH:MM:SS) with which to filter the date_field. Returns metadata with a timestamp at or before exact time provided in query. You can specify timezone in query - otherwise your site's time zone will be used. If provided, this parameter will be used instead of end_date. |
| `with_deleted` | `TrueClass \| FalseClass` | Query, Optional | Allow to fetch deleted metadata. |
| `resource_ids` | `Array<Integer>` | Query, Optional | Allow to fetch metadata for multiple records based on provided ids. Use in query: `resource_ids[]=122&resource_ids[]=123&resource_ids[]=124`.<br>**Constraints**: *Maximum Items*: `50` |
| `direction` | [Sorting direction](../../doc/models/sorting-direction.md) \| nil | Query, Optional | This is a container for one-of cases. |

## Response Type

[`PaginatedMetadata`](../../doc/models/paginated-metadata.md)

## Example Usage

```ruby
Liquid error: Value cannot be null. (Parameter 'key')collect = {
  'resource_type' => ResourceType::SUBSCRIPTIONS,
  'page' => 2,
  'per_page' => 50,
  'date_field' => BasicDateField::UPDATED_AT
}

result = custom_fields_controller.list_metadata(collect)
```


# List Metafields

This endpoint lists metafields associated with a site. The metafield description and usage is contained in the response.

```ruby
def list_metafields(options = {})
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `resource_type` | [`ResourceType`](../../doc/models/resource-type.md) | Template, Required | the resource type to which the metafields belong |
| `name` | `String` | Query, Optional | filter by the name of the metafield |
| `page` | `Integer` | Query, Optional | Result records are organized in pages. By default, the first page of results is displayed. The page parameter specifies a page number of results to fetch. You can start navigating through the pages to consume the results. You do this by passing in a page parameter. Retrieve the next page by adding ?page=2 to the query string. If there are no results to return, then an empty result set will be returned.<br>Use in query `page=1`.<br>**Default**: `1`<br>**Constraints**: `>= 1` |
| `per_page` | `Integer` | Query, Optional | This parameter indicates how many records to fetch in each request. Default value is 20. The maximum allowed values is 200; any per_page value over 200 will be changed to 200.<br>Use in query `per_page=200`.<br>**Default**: `20`<br>**Constraints**: `<= 200` |
| `direction` | [Sorting direction](../../doc/models/sorting-direction.md) \| nil | Query, Optional | This is a container for one-of cases. |

## Response Type

[`ListMetafieldsResponse`](../../doc/models/list-metafields-response.md)

## Example Usage

```ruby
collect = {
  'resource_type' => ResourceType::SUBSCRIPTIONS,
  'page' => 2,
  'per_page' => 50
}

result = custom_fields_controller.list_metafields(collect)
```

## Example Response *(as JSON)*

```json
{
  "total_count": 0,
  "current_page": 0,
  "total_pages": 0,
  "per_page": 0,
  "metafields": [
    {
      "id": 0,
      "name": "string",
      "scope": {
        "csv": "0",
        "statements": "0",
        "invoices": "0",
        "portal": "0",
        "public_show": "0",
        "public_edit": "0"
      },
      "data_count": 0,
      "input_type": "string",
      "enum": null
    }
  ]
}
```

