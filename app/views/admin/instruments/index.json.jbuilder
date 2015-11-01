json.array!(@instruments) do |instrument|
  json.extract! instrument, :id, :name, :description, :instrument_type_id
  json.url instrument_url(instrument, format: :json)
end
