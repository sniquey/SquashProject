class Notifier < ActionMailer::Base
	default_url_options[:host] = "localhost:3000"
	default from: "from@example.com"

	def password_reset(player)
  		@player = player
  		mail(to: "#{player.name} <#{player.email}>",
       subject: "Reset Your Password")
	end
end
