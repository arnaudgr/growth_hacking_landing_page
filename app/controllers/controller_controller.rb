class ControllerController < ApplicationController
	def general



	end

	def pro
	BotTwitter.new.tweet_pro


	end

	def student
	BotTwitter.new.tweet_students



	end
end
