class AddPasswordResetTokenToPlayers < ActiveRecord::Migration
  def change
  	add_column :players, :password_reset_token, :string
  	add_index :players, :password_reset_token
  end
end
