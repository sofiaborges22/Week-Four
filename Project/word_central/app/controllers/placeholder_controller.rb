class PlaceholderController < ApplicationController
	def new
		render 'new'
	end

	def create
		movie_quotes= [
			"Blessed is he who, in the name of charity and good will, shepherds the weak through the valley of the darkness, for he is truly his brother's keeper and the finder of lost children. And I will strike down upon thee with great vengeance and furious anger those who attempt to poison and destroy My brothers.",
			"I'm sorry, did I break your concentration? I didn't mean to do that. Please, continue, you were saying something about best intentions. What's the matter? Oh, you were finished! Well, allow me to retort. What does Marsellus Wallace look like?",
			"That's when you know you've found somebody special. When you can just shut the fuck up for a minute and comfortably enjoy the silence.",
		]

		amount = params[:placeholder_text][:amount].to_i
		option = params[:placeholder_text][:option]

		@paragraphs = []

		amount.times do 
			@paragraphs.push(movie_quotes.sample)
		end

		render 'create'
	end
end
