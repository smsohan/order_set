json.meta do
  json.total @comments.total_count
  json.current_page page
  json.per_page per_page
end

json.urls do
  if @comments.total_count > (page * per_page)
    json.next url_for(page: page + 1)
  end
  if page > 1
    json.prev url_for(page: page - 1)
  end
end

json.data do
  json.array! @comments do |comment|
    json.partial! "comment", comment: comment
  end
end