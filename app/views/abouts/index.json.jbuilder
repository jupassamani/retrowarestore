json.array!(@abouts) do |about|
  json.extract! about, :id, :content, :image
  json.url about_url(about, format: :json)
end
