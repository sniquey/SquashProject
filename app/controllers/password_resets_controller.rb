class PasswordResetsController < ApplicationController
	def new
	end

	def create

    	player = Player.find_by(email: params[:email])
    			  if player
    	player.generate_password_reset_token!
    	Notifier.password_reset(player).deliver
    	redirect_to login_path
    	else
    	flash.now[:error] = "Email not found"
    	render action: 'new'
    	end
  	end

  	def edit
  		
  		@player = Player.find_by(password_reset_token: params[:id])
  		if @player
  		else
    		render file: 'public/404.html', status: :not_found
  		end
	end

	def update
  player = Player.find_by(password_reset_token: params[:id])
  if @player && @player.update_attributes(player_params)
    @player.update_attribute(:password_reset_token, nil)
    session[:player_id] = @player.id
    redirect_to player_show_path, success: "Password updated."
  else
    flash.now[:notice] = "Password reset token not found."
    render action: 'edit'
  end
end

private
def player_params
  params.require(:player).permit(:password, :password_confirmation)
end

end
