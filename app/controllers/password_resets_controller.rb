class PasswordResetsController < ApplicationController
	def new
	end

	def create
    	player = Player.find_by(email: params[:email])
    	player.generate_password_reset_token!
    	redirect_to login_path
  	end

end
