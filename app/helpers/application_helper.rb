module ApplicationHelper
	
	def email_params
    	params.require(:email).permit!
  	end
end
