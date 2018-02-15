class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :player_name
      t.decimal :height
      t.decimal :weight
      t.integer :born
      t.string :college

      t.timestamps
    end
  end
end
