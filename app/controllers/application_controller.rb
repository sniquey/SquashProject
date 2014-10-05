class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

 before_action :authenticate

  private
  def authenticate
	@current_player = Player.find_by(:id => session[:player_id])
	session[:player_id] = nil unless @current_player.present?
  end

end
