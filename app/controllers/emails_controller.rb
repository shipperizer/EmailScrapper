require 'json'

class EmailsController < ApplicationController

	def new
	end

	def index
	  	@emails = Email.all
	end	
  
	def create
		@email= Email.new(ajax_email_params) 
  		respond_to do |format|
		    if @email.save
		      format.html { render 'thanks', notice: 'Thanks.' }
		      format.json {	render :status => 200 }
		    else
		      format.html { render action: "new" }
		      format.json { render :status => 404 }
		    end
		end
	end

	def destroy
  		@email= Email.all.find_by_email(email_params[:email])
  		@email.destroy
  		render "thanks"
  	end
end
