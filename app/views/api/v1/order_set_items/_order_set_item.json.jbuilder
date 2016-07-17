json.id order_set_item.id
json.name order_set_item.name
json.description order_set_item.description
json.created_at order_set_item.created_at
json.path api_v1_order_set_item_path(order_set_item.id)
json.children_ids order_set_item.children.pluck(:id)
