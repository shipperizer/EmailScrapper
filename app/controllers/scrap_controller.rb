class ScrapController < ApplicationController
	def new
	end

	def create
		@email= Email.new(email_params) 
  		@email.save
  		redirect_to root_path
	end

	def destroy
  		@email= Email.all.find_by_email(email_params[:email])
  		@email.destroy
  		render "thanks"
  	end

end
