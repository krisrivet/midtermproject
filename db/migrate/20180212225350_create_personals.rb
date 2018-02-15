class CreatePersonals < ActiveRecord::Migration[5.1]
  def change
    create_table :personals do |t|
      t.string :player_name
      t.integer :age
      t.string :team
      t.string :college
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
