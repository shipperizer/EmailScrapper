module ApplicationHelper
	
	def ajax_email_params
    	params.require(:payload).permit(:email)
  	end
  	def	email_params
    	params.require(:email).permit(:email)
  	end
end
