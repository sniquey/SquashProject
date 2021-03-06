# == Schema Information
#
# Table name: matches
#
#  id                   :integer          not null, primary key
#  winner_id            :integer
#  loser_id             :integer
#  date                 :date
#  winner_games         :integer
#  winner_points        :integer
#  winner_before_matrix :float
#  winner_matrix_change :float
#  loser_games          :integer
#  loser_points         :integer
#  loser_before_matrix  :float
#  loser_matrix_change  :float
#  created_at           :datetime
#  updated_at           :datetime
#

class Match < ActiveRecord::Base
  belongs_to :winner, :class_name => "Player"
  belongs_to :loser, :class_name => "Player"



  def self.retrieve_all(player_id)
  	player = Player.find(player_id)
  	@matches = Match.where('winner_id = ? OR loser_id = ?', player.id, player.id)


		@agent = Player.login unless @agent

		url = "http://squashmatrix.com/Home/PlayerResults/#{player_id}?max=0&X-Requested-With=XMLHttpRequest"
		puts "Fetching matches from #{url}"
		page = @agent.get(url)

		doc = page.parser
		trs = doc.css('tr')
		counter = 0
		trs.each do |tr|

			while counter < 10 do
			match = Match.create
			match.date = tr.css('td')[0].text
			# match.competition = tr.css('td')[1].text 
			# match.division = tr.css('td')[2].text
			
			if tr.css('td')[7].text.to_i > 0
				match.winner_id = player_id
				match.loser_id = tr.css("td a").map { |a| a.get_attribute('href').split('/').last }.uniq.first
				match.winner_games = tr.css('td')[5].to_s.split('-').first.to_i
				match.loser_games = tr.css('td')[5].to_s.split('-').last.to_i
				match.winner_points = tr.css('td')[6].to_s.split('-').first.to_i
				match.loser_points = tr.css('td')[6].to_s.split('-').last.to_i
				match.winner_matrix_change = tr.css('td')[7].text.to_i
			else
				match.loser_id = player_id
				match.winner_id = tr.css("td a").map { |a| a.get_attribute('href').split('/').last }.uniq.first
				match.winner_games = tr.css('td')[5].text.split('-').last.to_i
				match.loser_games = tr.css('td')[5].text.split('-').first.to_i
				match.winner_points = tr.css('td')[6].text.split('-').last.to_i
				match.loser_points = tr.css('td')[6].text.to_s.split('-').first.to_i
				match.loser_matrix_change = tr.css('td')[7].text.to_i
			end

			match.save
			@matches << match
			counter += 1
		end
		end			
	
		player.matches
  end
end


