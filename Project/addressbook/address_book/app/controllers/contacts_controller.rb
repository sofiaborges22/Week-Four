class ContactsController < ApplicationController
	def create
		@contacts = Contact.new(
      	:name => params[:contact][:name],
     	:address => params[:contact][:address],
     	:phone => params[:contact][:phone],
     	:email => params[:contact][:email])

		contact.save
    	# Render contact's attributes
    	redirect_to("/contacts")
	end

	def index
		@contacts = Contact.order(name: :asc)
	end

	def profile
		@contact = Contact.find_by(id: params[:id])
	end

	def favorites
		contact_id = params[:contact_id]
		contact = Contact.find_by(id: contact_id)
		contact.update_attributes(favorites: true)
		@favorites = Contact.where("favorites=?", true)
	end

	def favorites
		@favorites = Contact.where("favorites=?", true)
	end

	def search
		user_search = params[:user_search]
		@contacts = Contact.where("name LIKE ?", "#{user_search}")
	end

end
