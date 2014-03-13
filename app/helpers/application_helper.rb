module ApplicationHelper
	
	def email_params
    	params.require(:payload).permit(:email)
  	end
end
