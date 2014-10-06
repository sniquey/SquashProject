class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :winner_id
      t.integer :loser_id
      t.date :date
      t.integer :winner_games
      t.integer :winner_points
      t.float :winner_before_matrix
      t.float :winner_matrix_change
      t.integer :loser_games
      t.integer :loser_points
      t.float :loser_before_matrix
      t.float :loser_matrix_change

      t.timestamps
    end
  end
end


