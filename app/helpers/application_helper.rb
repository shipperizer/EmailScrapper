module ApplicationHelper
	
	def email_params
    	params.require(:email).permit(:email)
  	end
end
