json.array!(@players) do |player|
  json.extract! player, :id, :name, :matrix, :email, :phone, :photo, :club_id
  json.url player_url(player, format: :json)
end
