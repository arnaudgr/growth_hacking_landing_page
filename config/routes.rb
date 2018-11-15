Rails.application.routes.draw do

	get "/general", to: 'controller#general'
	post "/register", to: 'contacts#create'
	get "/student", to: 'controller#student'
	get "/pro", to: 'controller#pro'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
