class EmailsController < ApplicationController

  def new
  end

  def index
  	@emails = Email.all
  end	
  
  def create
  	redirect_to :controller=>'scrap', :action=>'destroy', :email=>params[:email]
  end

end
