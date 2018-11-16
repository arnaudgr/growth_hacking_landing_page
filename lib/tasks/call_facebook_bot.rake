desc "Call facebook bot for marketting operations."
task :call_facebook_bot => :environment do
	# On test si on est bien lundi pour lancer la task.
	if Date.today.wday == 1
		FacebookBot.new.perform
	end
end
