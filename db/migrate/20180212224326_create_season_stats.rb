class CreateSeasonStats < ActiveRecord::Migration[5.1]
  def change
    create_table :season_stats do |t|
      t.string :player_name
      t.integer :year
      t.integer :age
      t.string :team
      t.integer :games_played
      t.decimal :average_minutes
      t.decimal :field_goal_percentage
      t.decimal :three_point_percentage
      t.decimal :free_throw_percentage
      t.decimal :average_points
      t.decimal :average_assists
      t.decimal :average_rebounds
      t.decimal :average_steals
      t.decimal :average_blocks
      t.decimal :average_turnover
      t.decimal :average_personal_foul

      t.timestamps
    end
  end
end
