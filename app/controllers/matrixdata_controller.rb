require 'open-uri'
require 'mechanize'


class MatrixdataController < ApplicationController
	def results
		agent = Mechanize.new
		page = agent.get("https://squashmatrix.com/Account/LogOn?UserName=65743&ReturnUrl=%2FHome%2FPlayer%2F65743")
		form = agent.page.forms[1]
		form["UserName"] = "veronique_eldridge@hotmail.com"
		form["Password"] = "Chicken007"
		# form["RememberMe"] = true
		form.submit
		page = agent.get('http://squashmatrix.com/Home/PlayerResults/22646?max=0&X-Requested-With=XMLHttpRequest')
		@doc = page.parser
		@trs = @doc.css('tr')
	end
end