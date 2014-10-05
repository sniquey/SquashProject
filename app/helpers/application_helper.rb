module ApplicationHelper
	def intellinav
		nav = ''
		if @current_player.present?
			nav += "<li>Hello #{ @current_player.name }</li> "
			nav += "<li>" + link_to('All Players', players_path) + "<li> "
			nav += "<li>" + link_to('Edit profile', edit_player_path(@current_player)) + "</li>"
			nav += "<li>#{link_to('Sign out', login_path, :method => :delete, :data => {:confirm => 'Are you sure?'})}</li>"
		else
			nav+= "<li>#{link_to('Signup', new_player_path)}</li>"
			nav += "<li>#{link_to('Sign in', login_path)}</li>"
		end
		nav
	end
end
