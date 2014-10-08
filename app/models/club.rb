# == Schema Information
#
# Table name: clubs
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  location   :string(255)
#  manager    :string(255)
#  phone      :integer
#  website    :text
#  email      :text
#  facebook   :text
#  created_at :datetime
#  updated_at :datetime
#

class Club < ActiveRecord::Base
	has_many :players
	has_many :teams


	def self.retrieve(squashmatrix_id)
		club = Club.find_by :id => squashmatrix_id
		return club unless club.nil?

		@agent = Player.login unless @agent
		puts "about to fetch club"
		url = "https://www.squashmatrix.com/Home/Club/#{squashmatrix_id}"
		puts "Fetching club from #{url}"
		page = @agent.get(url)

		doc = page.parser
		club = Club.new
		club.name = doc.css('span').first.text
		club.id = squashmatrix_id
		club.save
	
		club
	end
end
