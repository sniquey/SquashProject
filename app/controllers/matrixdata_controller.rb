require 'open-uri'
require 'mechanize'


class MatrixdataController < ApplicationController

	def findallplayers
		agent = Mechanize.new
		page = agent.get("https://squashmatrix.com/Account/LogOn?UserName=65743&ReturnUrl=%2FHome%2FPlayer%2F65743")
		form = agent.page.forms[1]
		form["UserName"] = "veronique_eldridge@hotmail.com"
		form["Password"] = "Chicken007"
		form.submit
		(22000..22003).each do |x|
			player = Player.retrieve(x)
			url = "https://www.squashmatrix.com/Home/Player/#{x}"
			puts url
			page = agent.get(url)
			@doc = page.parser
			@player = Player.create
			@player.name = @doc.css('h1').first.text
			@player.id = @doc.css('table tr td')[1].text
			@player.matrix = @doc.css('table tr td')[3].text.to_f
			@player.club = @doc.css('table ul li a').map {|a| a.get_attribute('href')}.uniq.first.split('/').last
			@player.save
				
		end
		# end
	end

	def results_saving
		Player.retrieve(@current_player.id)
		@agentme = Mechanize.new
		url = "https://localhost:3000/results"
		page = @agentme.get(url)

  		@current_player_matches = Match.where('winner_id = ? OR loser_id = ?', @current_player.id, @current_player.id)

		@doc = page.parser
		@trs = @doc.css('tr')
	
	end

	def results

		agent = Mechanize.new
		page = agent.get("https://squashmatrix.com/Account/LogOn?UserName=65743&ReturnUrl=%2FHome%2FPlayer%2F65743")
		form = agent.page.forms[1]
		form["UserName"] = "veronique_eldridge@hotmail.com"
		form["Password"] = "Chicken007"
		form.submit
		@x = @current_player.id
		url = "http://squashmatrix.com/Home/PlayerResults/22646?max=0&X-Requested-With=XMLHttpRequest"
		page = agent.get(url)
		@doc = page.parser
		@trs = @doc.css('tr')
	end
end