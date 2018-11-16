desc "Call twitter bot for marketting operations."
task :call_twitter_bot => :environment do
	# On test si on est bien lundi pour lancer la task.
	BotTWitter.new.perform
end