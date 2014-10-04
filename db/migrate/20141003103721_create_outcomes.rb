class CreateOutcomes < ActiveRecord::Migration
  def change
    create_table :outcomes do |t|
      t.integer :player_id
      t.integer :match_id
      t.boolean :result
      t.integer :games
      t.integer :points
      t.float :matrix_change
      t.float :matrix

      t.timestamps
    end
  end
end
