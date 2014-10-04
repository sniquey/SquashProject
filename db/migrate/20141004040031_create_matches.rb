class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :player_one_id
      t.integer :player_two_id
      t.date :date

      t.timestamps
    end
  end
end
