class ScrapController < ApplicationController
	

	def new
	end

	def create
		@email= Email.new(params[:email]) 
  		respond_to do |format|
		    if @email.save
		      format.html { redirect_to @email, notice: 'Thanks.' }
		      format.json { render json: @email, status: :created, location: @email }
		    else
		      format.html { render action: "new" }
		      format.json { render json: @email.errors, status: :unprocessable_entity }
		    end
		end
	end

	def destroy
  		@email= Email.all.find_by_email(email_params[:email])
  		@email.destroy
  		render "thanks"
  	end

end

