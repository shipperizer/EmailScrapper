class EmailsController < ApplicationController

	def new
	end

	def index
	  	@emails = Email.all
	end	
  
	def create
		
		email_val=email_params[:email]
		logger.debug "#{email_params[:email]}"
		@email= Email.new(email_params[:email].to_s) 

  		respond_to do |format|
		    if @email.save
		      format.html { render 'thanks', notice: 'Thanks.' }
		      format.json { render :status => 200 }
		    else
		      format.html { render action: "new" }
		      format.json { render :status => 404 }
		    end
		end
	end

	def destroy
  		@email= Email.all.find_by_email(email_params)
  		@email.destroy
  		render "thanks"
  	end
end
