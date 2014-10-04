class AddAvatarToPlayers < ActiveRecord::Migration
  def change
  	add_column :players, :avatar, :text, :default => 'http://top10hm.com/wp-content/uploads/2012/06/Squash-300x200.jpg'
  end
end
