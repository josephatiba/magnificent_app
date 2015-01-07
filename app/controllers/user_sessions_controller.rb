class UserSessionsController < ApplicationController

	def new
	end

	def create
		user = User.where(email: params[:login][:email]).first
		if user && user.authenticate(params[:login][:password])
		  # sets a cookie / stores a session
		  session[:user_id] = user.id
		  redirect_to users_path
		else
		  redirect_to login_path
		end
	end

	def destroy
		sessions.delete :user_id
		redirect_to login_path
	end
end



