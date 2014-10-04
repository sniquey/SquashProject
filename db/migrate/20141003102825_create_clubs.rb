class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :location
      t.string :manager
      t.integer :phone
      t.text :website
      t.text :email
      t.text :facebook

      t.timestamps
    end
  end
end
