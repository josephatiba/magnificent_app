class UsersController < ApplicationController
    before_action :find_post, only: [:show, :edit, :update, :destroy]


	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			session[:user_id] = @user.id
			flash[:notice] = "Thank you for signing up! You are Magnificent!"
			redirect_to "/"
		else
			flash[:alert] = "There was a problem creating your account. Please try again"
			redirect to :back
		end
	end

	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end

	

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update_attributes(user_params)
			redirect_to user_path(@user)
		else
			render :edit
		end
	end

	def destroy
		@user = User.find(params[:id])
		if @user.destroy
			redirect_to users_path
		else
			redirect_to user_path(@user)
		end
	end	


	private

	def user_params
		params.require(:user).permit(:username, :first_name, :last_name, :email, :password, :password_salt, :password_confirmation, :password_hash, :category, :bio, :contact_info, :posts)
	end



end












