# The API v1

  OrderSetItem (id, parent_id, name, description, created_at)
  Create, Update, List, Delete

```
  1. Get the list of OrderSetItems

  curl "http://localhost:3000/api/v1/order_set_items" | jq "."

  Next page
  curl "http://localhost:3000/api/v1/order_set_items?page=2" | jq "."

  Larger page
  curl "http://localhost:3000/api/v1/order_set_items?per_page=10" | jq "."

  2. Create an OrderSetItem

  curl -v -X POST -d  '{"order_set_item": {"name": "Asthma", "description": "Can cause life threatening conditions unless treated immediately"}}' "http://admin:admin@localhost:3000/api/v1/order_set_items" -H 'Content-Type: application/json'

  4. Get a single OrderSetItem

  curl http://localhost:3000/api/v1/order_set_items/16 | jq "."

  4. Delete an OrderSetItem
  curl -v -X DELETE http://admin:admin@localhost:3000/api/v1/order_set_items/1

  5. Error conditions
  Not found
  curl -v http://localhost:3000/api/v1/order_set_items/999

  Invalid
  curl -v -X POST -d  '{"order_set_item": {"description": "Can cause life threatening conditions unless treated immediately"}}' "http://admin:admin@localhost:3000/api/v1/order_set_items" -H 'Content-Type: application/json' | jq "."

```

# The API v2

  OrderSetItem (id, parent_id, name, description, created_at)
  Comment (id, order_set_item_id, username, text)

  1. Get a list of comments
  curl "http://localhost:3000/api/v2/order_set_items/16/comments" | jq "."

  2. Create a comment
  curl -v -X POST -d  '{"comment": {"username": "David", "text": "Looks good to me"}}' "http://localhost:3000/api/v2/order_set_items/16/comments" -H 'Content-Type: application/json' -u admin

  3. Show comments on order_set_items
  curl "http://localhost:3000/api/v2/order_set_items/16?include_comments=1" | jq "."

