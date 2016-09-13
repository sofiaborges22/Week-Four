Rails.application.routes.draw do
	root "site#home"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'site#home'

  get '/text_inspections/new', to: "text_inspections#new"
  
  post "/text_inspections", to: "text_inspections#create"

  get '/asciis/new', to: "asciis#new"

  post '/asciis', to: "asciis#create"

  get '/placeholder_text/new', to: "placeholder#new"

  post '/placeholder_text', to: "placeholder#create"
end
