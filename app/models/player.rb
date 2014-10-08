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
	belongs_to :club, :class_name => 'Club', :foreign_key => 'club_id'
	has_and_belongs_to_many :teams

 
	# This gives me @player.wins and @player.losses
	has_many :wins, :class_name => 'Match', :foreign_key => 'winner_id'
	has_many :loses, :class_name => 'Match', :foreign_key => 'loser_id'

 	validates :name, :presence => true, :uniqueness => false, :length => {:minimum => 2}
	validates :id, :presence => true, :uniqueness => true, :length => {:minimum => 2}
	validates :email, :presence => true, :uniqueness => true, format: { with: /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9\.-]+\.[A-Za-z]+\Z/ }

	def matches
  		Match.where('winner_id = ? OR loser_id = ?', self.id, self.id)
	end

	# def club
	# 	Club.find_by(:id=>self.club_id)
	# end

	def self.retrieve(squashmatrix_id)
		player = Player.find_by :id => squashmatrix_id
		return player unless player.nil?

		self.login unless @agent

		url = "https://www.squashmatrix.com/Home/Player/#{squashmatrix_id}"
		attempts = 0
		begin
			puts "Fetching player from #{url}"
			page = @agent.get(url)
		rescue
			url = @agent.page.links.last.href # Try again with the moved to URL.
			if attempts < 2
				puts "retrying"
				attempts += 1
				retry
			end
		end
		doc = page.parser
		player = Player.new
		player.name = doc.css('h1').first.text
		player.id = doc.css('table tr td')[1].text
		player.matrix = doc.css('table tr td')[3].text.to_f
		player.club_id = doc.css('table ul li a').map {|a| a.get_attribute('href')}.uniq.first.split('/').last
		player.email = "happy#{ Random.rand }@mondays.com"
		player.password = 'chicken'
		player.password_confirmation = 'chicken'
		player.save
	
		player
	end

	private
	def self.login
		puts "Logging in to Squash Matrix"
		@agent = Mechanize.new
		page = @agent.get("https://squashmatrix.com/Account/LogOn?UserName=65743&ReturnUrl=%2FHome%2FPlayer%2F65743")
		form = @agent.page.forms[1]
		form["UserName"] = "veronique_eldridge@hotmail.com"
		form["Password"] = "Chicken007"
		form.submit
	end
end
