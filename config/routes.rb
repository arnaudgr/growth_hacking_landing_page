Rails.application.routes.draw do

	get "/general", to: 'controller#general'
	post "/register", to: 'contacts#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
