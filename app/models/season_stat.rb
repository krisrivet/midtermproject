class SeasonStat < ApplicationRecord
  validates_presence_of :player_name, :team
  validates :games_played, :average_minutes, :field_goal_percentage, :three_point_percentage, :free_throw_percentage, :average_points, :average_assists, :average_rebounds, :average_steals, :average_blocks, :average_turnover, :average_personal_foul, numericality: true, presence: true
  validates :year, :inclusion => 1975..2002, numericality: true, presence: true
  validates :age, :inclusion => 19..42, numericality: true, presence: true
end
