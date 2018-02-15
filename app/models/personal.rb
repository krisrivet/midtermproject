class Personal < ApplicationRecord
  validates_presence_of :player_name, :team, :college
  validates :age, :average_points, :average_assists, :average_rebounds, :average_steals, :average_blocks, :average_turnover, :average_personal_foul, numericality: true, presence: true
end
