require 'twitter'
require 'dotenv'

class BotTWitter


def tweet_pro

    
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['TWITTER_API_KEY']
      config.consumer_secret     = ENV['TWITTER_SECRET_KEY']
      config.access_token        = ENV['ACCESS_TOKEN']
      config.access_token_secret = ENV['ACCESS_TOKEN_SECRET']
    end




	client.search('#InclusionNumérique', '#HoumousSapiens', '#numériqueinclusif', '#territoires', '#GovTech', '#algorithmes', '#Empowerment', '#école', '#pédagogie', '#TransformationDigitale', '#dématérialisation', '#WomenInTech' ).take(3).each do |tweet|
     client.update("@#{tweet.user} THP s'engage pour un numérique accessible  et inclusif à tous sans pré-requis, pour qu'algorithmes ne rythme plus avec fracture numérique. En savoir plus sur : https://www.thehackingproject.org/ #empowerment ")
    end



def tweet_students 


client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['TWITTER_API_KEY']
      config.consumer_secret     = ENV['TWITTER_SECRET_KEY']
      config.access_token        = ENV['ACCESS_TOKEN']
      config.access_token_secret = ENV['ACCESS_TOKEN_SECRET']
    end




	client.search('#OffreEmploi','#formations', '#Rennes2', '#Rennes1', '#stage', '#Rennes', '#algorithmes'; '#digital', '#OffreStage' ).take(3).each do |tweet|
     client.update("@#{tweet.user} THP se donne 2 mois pour te faire devenir développeur junior et ainsi agrandir tes chances vis à vis de tes futurs employeurs ou écoles. Pré-requis : aucun ?  Juste du temps et de l'énergie. Pour en savoir plus : https://www.thehackingproject.org/")
    end


def perform 
	
tweet_pro
tweet_students 

end





end