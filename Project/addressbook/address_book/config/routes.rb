Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	get '/', to: 'contacts#home'

	get '/contacts', to: 'contacts#index'

	get '/contacts/new', to: 'contacts#new'

	post '/contacts', to: 'contacts#index'

	get '/contacts/:id', to: 'contacts#profile'

	post '/favorites/add', to: 'contacts#favorites'

	get '/favorites', to: 'contacts#favorites'

	post '/contacts/search', to: 'contacts#search'
end
