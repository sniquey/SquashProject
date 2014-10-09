class SessionController < ApplicationController
	# Login form
	def new
	end

	# Where the login form POSTs data
	def create
		player = Player.where(:name => params[:playername]).first
		if player.present? && (player.authenticate params[:password])
			session[:player_id] = player.id
			redirect_to player
		else
			redirect_to root_path
		end
	end

	# Logout
	def destroy
		session[:player_id] = nil
		redirect_to root_path
	end
end