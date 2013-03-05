json.array!(@images) do |image|
  json.extract! image, :title, :url
  json.url image_url(image, format: :json)
end