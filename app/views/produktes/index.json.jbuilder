json.array!(@produktes) do |produkte|
  json.extract! produkte, :id, :name
  json.url produkte_url(produkte, format: :json)
end
