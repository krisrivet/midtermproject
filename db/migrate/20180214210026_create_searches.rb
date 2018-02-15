class CreateSearches < ActiveRecord::Migration[5.1]
  def change
    create_table :searches do |t|
      t.string :keywords
      t.decimal :min_height
      t.decimal :max_height
      t.decimal :min_weight
      t.decimal :max_height
      t.integer :born
      t.string :college

      t.timestamps
    end
  end
end
