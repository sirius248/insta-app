json.array! @posts do |post|
  json.id post.id
  json.content post.content
  json.photo_url post.photo.path
end
