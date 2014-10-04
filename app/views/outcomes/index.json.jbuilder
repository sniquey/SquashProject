json.array!(@outcomes) do |outcome|
  json.extract! outcome, :id, :player_id, :result, :games, :points, :matrix_change, :matrix
  json.url outcome_url(outcome, format: :json)
end
