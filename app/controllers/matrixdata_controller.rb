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
		(22000..23000).each do |x|
			@player = Player.find_by(:id => x)
			if @player.nil?
				@player = Player.create
				page = agent.get('http://www.squashmatrix.com/Home/Player/#{x}')
				@doc = page.parser
				@player = Player.new
				@player.name = @doc.css('h1').first.text
				@player.id = @doc.css('table tr td')[1].text
				@player.matrix = @doc.css('table tr td')[3].text.to_f
				@player.club_id = @doc.css('table ul li a').map {|a| a.get_attribute('href')}.uniq.first.split('/').last
				page = agent.get('view-source:http://www.squashmatrix.com/Home/Player/#{x}#Contact')
				@doc = page.parser
				# @player.email = @doc.css("div#playerContactDetailsContent").text
				@player.save
			end
		end
			redirect_to players_path
	end

	def results

		agent = Mechanize.new
		page = agent.get("https://squashmatrix.com/Account/LogOn?UserName=65743&ReturnUrl=%2FHome%2FPlayer%2F65743")
		form = agent.page.forms[1]
		form["UserName"] = "veronique_eldridge@hotmail.com"
		form["Password"] = "Chicken007"
		form.submit
		page = agent.get('http://squashmatrix.com/Home/PlayerResults/22646?max=0&X-Requested-With=XMLHttpRequest')
		@doc = page.parser
		@trs = @doc.css('tr')
	end
end