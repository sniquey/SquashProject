json.array!(@divisions) do |division|
  json.extract! division, :id, :number, :competition_id
  json.url division_url(division, format: :json)
end
