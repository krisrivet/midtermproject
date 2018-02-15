# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
csv_fileOne = Rails.root + 'db/Players.csv'

optionsOne = {file_encoding: 'iso-8859-1',
           key_mapping: {ignoreplayernumber:nil, ignoreheight:nil, ignoreweight:nil,
                         birth_city:nil, birth_state:nil }}

players = SmarterCSV.process(csv_fileOne,optionsOne)

puts(players.size)

Player.delete_all

#players[0..99].each do |player|
players.each do |player|
  player_object = Player.create(player)
end

puts(Player.count)

######################################################################################################

csv_fileTwo = Rails.root + 'db/season_stat.csv'

optionsTwo = {file_encoding: 'iso-8859-1',
              key_mapping: {ignoreid:nil }}

season_stats = SmarterCSV.process(csv_fileTwo,optionsTwo)

puts(season_stats.size)

SeasonStat.delete_all
#season_stats[0..99].each do |season_stat|[]
season_stats.each do |season_stat|
  season_stat_object = SeasonStat.create(season_stat)
end

puts(SeasonStat.count)





