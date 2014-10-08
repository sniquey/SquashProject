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
  	player = Player.find_by(:id => player_id)

  	# @matches_won = Match.where(:winner_id => player_id)
   #  @matches_lost = Match.where(:loser_id => player_id)
   #  @matches << @matches_won << @matches_lost
  	

		@agent = Player.login unless @agent

		url = "http://squashmatrix.com/Home/PlayerResults/#{player_id}?max=0&X-Requested-With=XMLHttpRequest"
		puts "Fetching matches from #{url}"
		page = @agent.get(url)

		doc = page.parser
		trs = doc.css('tr')

		trs.each do |tr|
			match = Match.create
			match.date = tr.css('td')[0].text
			match.competition = tr.css('td')[1].text 
			match.division = tr.css('td')[2].text
			if tr.css('td')[3].split('-').first > tr.css('td')[3].split('-').last
				match.winner_id = player_id
				match.loser_id = tr.css("td a").map { |a| a.get_attribute('href').split('/').last }.uniq.first
				match.winner_games = tr.css('td')[5].split('-').first
				match.loser_games = tr.css('td')[5].split('-').last
				match.winner_points = tr.css('td')[6].text.split('-').first
				match.loser_points = tr.css('td')[6].text.split('-').last
				match.winner_matrix_change = tr.css('td')[7].text
			else
				match.loser_id = player_id
				match.winner_id = tr.css("td a").map { |a| a.get_attribute('href').split('/').last }.uniq.first
				match.winner_games = tr.css('td')[5].split('-').last
				match.loser_games = tr.css('td')[5].split('-').first
				match.winner_points = tr.css('td')[6].text.split('-').last
				match.loser_points = tr.css('td')[6].text.split('-').first
				match.loser_matrix_change = tr.css('td')[7].text
			end
			match.save
			player.matches << match
		end			
	
		player.matches
  end
end


