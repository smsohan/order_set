json.partial! 'api/v1/order_set_items/order_set_item', order_set_item: order_set_item
json.path api_v2_order_set_item_path(order_set_item.id)
json.comments_path api_v2_order_set_item_comments_path(order_set_item.id)
if include_comments?
  json.comments order_set_item.comments, partial: 'api/v2/comments/comment', as: :comment
end
