json.array!(@addresses) do |address|
  json.extract! address, :id, :street, :city, :state, :country, :latitude, :logitude
  json.url address_url(address, format: :json)
end
