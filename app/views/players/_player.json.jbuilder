json.extract! player, :id, :player_name, :height, :weight, :born, :college, :created_at, :updated_at
json.url player_url(player, format: :json)
