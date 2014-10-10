class SessionController < ApplicationController
	# Login form
	def new
	end

	# Where the login form POSTs data
	def create
		player = Player.where(:name => params[:playername]).first
		if player.present? && (player.authenticate params[:password])
			if params[:remember_me]
        		signed_token = Rails.application.message_verifier(:remember_me).generate(player.id)
        		cookies.permanent.signed[:remember_me_token] = signed_token
      		end
			session[:player_id] = player.id
			flash[:success] = "Thanks for logging in!"
			#Player.retrieve(player.id)
			redirect_to player
		else
			flash[:error] = "There was a problem logging in. Please check your email and password."
			redirect_to root_path
		end
	end

	# Logout
	def destroy
		session[:player_id] = nil
		cookies.delete(:remember_me_token)
    	reset_session
    	redirect_to root_path, notice: "You have been logged out."
	end
end