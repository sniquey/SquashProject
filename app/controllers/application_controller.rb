class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  add_flash_types :success
  rescue_from ActiveRecord::RecordNotFound, with: :render_404
  rescue_from ActiveSupport::MessageVerifier::InvalidSignature, with: :render_error

 before_action :authenticate


 private
 def render_404
    render file: 'public/404.html', status: :not_found, layout: false
  end
def render_error
    render file: 'public/500.html', status: :internal_server_error, layout: false
  end
  def logged_in?
    current_player
  end
  helper_method :logged_in?
  
  def authenticate
	@current_player = Player.find_by(:id => session[:player_id])
	session[:player_id] = nil unless @current_player.present?
  end
  #helper_method :current_player

  def require_player
    if current_player
      true
    else
      redirect_to new_player_session_path, notice: "You must be logged in to access that page."
    end
  end

end
