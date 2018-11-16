require 'date'

desc "This task send newsletter to each email addresses registered in the database."
task :send_newsletter => :environment do
	# On test si on est bien lundi pour lancer la task.
	if Date.today.wday == 1
		User.find_each do |user|
			UserMailer.with(user: user).weekly_summary.deliver_now
		 end
	end
end