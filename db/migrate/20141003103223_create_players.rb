class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.float :matrix
      t.integer :phone
      t.integer :club_id

      t.timestamps
    end
  end
end
