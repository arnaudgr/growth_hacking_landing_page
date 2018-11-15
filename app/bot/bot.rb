require 'facebook/messenger'
require 'dotenv'
Dotenv.load

include Facebook::Messenger

Facebook::Messenger::Subscriptions.subscribe(access_token: ENV['ACCESS_TOKEN_MESSENGER'])

Bot.on :message do |message|
  message.reply(text: 'Hello, human!')
end

# Bot.deliver({
#   recipient: {
#     id: '1624665027'
#   },
#   message: {
#     text: 'Human?'
#   },
#   message_type: Facebook::Messenger::Bot::MessagingType::UPDATE
# }, access_token: ENV['ACCESS_TOKEN_MESSENGER'])

### C'est là qu'il faut scrapper les id mais j'y arrive pas :( ###
