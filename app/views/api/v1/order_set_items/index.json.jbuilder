json.meta do
  json.total @order_set_items.total_count
  json.current_page page
  json.per_page per_page
end

json.urls do
  if @order_set_items.total_count > (page * per_page)
    json.next url_for(params: {page: page + 1})
  end
  if page > 1
    json.prev url_for(params: {page: page - 1})
  end
end

json.data do
  json.array! @order_set_items do |order_set_item|
    json.partial! "order_set_item", order_set_item: order_set_item
  end
end