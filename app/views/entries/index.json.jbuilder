json.array!(@entries) do |entry|
  json.extract! entry, :id, :title, :body, :cover_image
  json.url entry_url(entry, format: :json)
end
