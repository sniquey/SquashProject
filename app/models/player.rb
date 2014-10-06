# == Schema Information
#
# Table name: players
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  player_num      :integer
#  matrix          :float
#  phone           :integer
#  club_id         :integer
#  created_at      :datetime
#  updated_at      :datetime
#  email           :string(255)
#  password_digest :string(255)
#  avatar          :text             default("http://top10hm.com/wp-content/uploads/2012/06/Squash-300x200.jpg")
#

class Player < ActiveRecord::Base
	has_secure_password :validations => false
	belongs_to :club
	has_and_belongs_to_many :teams

 
	# This gives me @player.wins and @player.losses
	has_many :wins, :class_name => 'Match', :foreign_key => 'winner_id'
	has_many :loses, :class_name => 'Match', :foreign_key => 'loser_id'
 

	validates :name, :presence => true, :uniqueness => false, :length => {:minimum => 2}
	validates :id, :presence => true, :uniqueness => true, :length => {:minimum => 2}
	validates :email, :presence => true, :uniqueness => true, format: { with: /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9\.-]+\.[A-Za-z]+\Z/ }
end
