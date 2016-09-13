class Contact < ApplicationRecord
	def home
		render 'home'
	end

	def new
  		render 'new'
  	end
end
