class Search < ApplicationRecord

  def search_players
    players = Player.all

    players = players.where(["player_name LIKE ?","%#{keywords}%"]) if keywords.present?
    players = players.where(["college LIKE ?",college]) if college.present?


    players = players.where(["name LIKE ?","%#{born}%"]) if born.present?

    return players
  end

end
