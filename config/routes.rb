Rails.application.routes.draw do
 
  post "/register", to: 'contacts#create'
  post "/", to: 'contacts#subscribe'
  root to: 'controller#general'
	get "/general", to: 'controller#general'
	get "/student", to: 'controller#student'
	get "/pro", to: 'controller#pro'

	mount Facebook::Messenger::Server, at: 'bot'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end