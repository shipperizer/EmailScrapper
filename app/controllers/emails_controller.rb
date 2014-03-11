class EmailsController < ApplicationController
  def new
  end

  def index
  	@emails = Email.all
  end	
  
  def create
  	@email= Email.new(email_params) 
  	@email.save
  	redirect_to root_path
  end

  def destroy
  	@email= Email.all.find_by_email(email_params[:email])
  	@email.destroy
  end

  private
  	def email_params
    	params.require(:email).permit(:email)
  end
end
