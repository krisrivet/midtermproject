json.extract! season_stat, :id, :player_name, :year, :age, :team, :games_played, :average_minutes, :field_goal_percentage, :three_point_percentage, :free_throw_percentage, :average_points, :average_assists, :average_rebounds, :average_steals, :average_blocks, :average_turnover, :average_personal_foul, :created_at, :updated_at
json.url season_stat_url(season_stat, format: :json)
