class Player < ApplicationRecord
  validates_presence_of :player_name, :college
  validates :height, :weight, numericality: true, presence: true
  validates :born, :inclusion => 1975..2002, numericality: true, presence: true
end
