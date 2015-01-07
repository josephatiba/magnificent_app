module UserSessionsHelper
	def current_user
		# if(user_id = session[:user_id])
		# 	@current_user ||= User.find(session[:user_id])
		# end	

		if(session[:user_id])
			@current_user ||= User.find(session[:user_id]["$oid"])	
		end

	end

	def logged_in?
		!current_user
	end

end
