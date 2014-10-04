json.array!(@clubs) do |club|
  json.extract! club, :id, :name, :location, :manager
  json.url club_url(club, format: :json)
end
