json.array!(@instrument_types) do |instrument_type|
  json.extract! instrument_type, :id, :name, :description
  json.url instrument_type_url(instrument_type, format: :json)
end
