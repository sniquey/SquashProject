json.array!(@matches) do |match|
  json.extract! match, :id, :player_one_id, :player_two_id
  json.url match_url(match, format: :json)
end
