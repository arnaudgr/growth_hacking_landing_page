Rails.application.routes.draw do

  devise_for :users
	get "/general", to: 'controller#general'
	post "/register", to: 'contacts#create'
	mount Facebook::Messenger::Server, at: 'bot'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
