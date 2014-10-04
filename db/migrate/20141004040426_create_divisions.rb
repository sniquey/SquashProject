class CreateDivisions < ActiveRecord::Migration
  def change
    create_table :divisions do |t|
      t.integer :number
      t.integer :competition_id

      t.timestamps
    end
  end
end
