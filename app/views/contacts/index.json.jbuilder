json.array!(@contacts) do |contact|
  json.extract! contact, :id, :content, :phone, :email, :lat, :lng
  json.url contact_url(contact, format: :json)
end
