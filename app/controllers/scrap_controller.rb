class ScrapController < ApplicationController
	def new
	end

	def create
		redirect_to :controller=>'emails', :action=>'create', :email=>params[:email]
	end
end
