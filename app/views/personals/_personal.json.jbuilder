json.extract! personal, :id, :player_name, :age, :team, :college, :average_points, :average_assists, :average_rebounds, :average_steals, :average_blocks, :average_turnover, :average_personal_foul, :created_at, :updated_at
json.url personal_url(personal, format: :json)
