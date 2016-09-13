class TextInspectionsController < ApplicationController
	def new 
		render "new"
	end

	 def create
    	@text = params[:text_inspection][:user_text]
    	@words = @text.split(" ")
    	@word_count = @text.split(" ").length
    	@minutes = (@word_count/270)
    	@frequencies = Hash.new(0)
    		@words.each do |word|
    			@frequencies[word] += 1
    		end
    	@word_frequency = @frequencies.sort_by{|word,num| num}.reverse.take(10)
    	render "results"
 	 end
end