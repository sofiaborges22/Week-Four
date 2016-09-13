class AsciisController < ApplicationController
	def new
		render 'new'
	end

	def create
		@text = params[:ascii][:user_text]
		a = Artii::Base.new
		@ascii = a.asciify(@text)
		render 'ascii'
	end
end
