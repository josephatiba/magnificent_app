require_relative 'gilt'

class PostsController < ApplicationController
	before_action :find_post, only: [:show, :edit, :update, :destroy]
	before_action :authorize, only: [:edit, :update, :destroy]
	

	def index
		@posts = Post.all.order(created_at: :desc)
		@gilt = Gilt.new(ENV['GILT_KEY'])
	end

	def show
		@post = Post.find(params[:id])
		@random_post = Post.random(@post)
	end

	def new
		@post = current_user.posts.create
	end

	def create
		@post = current_user.posts.create(post_params)

		if @post.save
			redirect_to @post
		else
			render 'new'
		end
	end

	def edit

	end

	def update
		if @post.update(post_params)
			redirect_to @post
		else
			render 'edit'
		end
	end

	def destroy
		@post.destroy
		redirect_to root_path
	end

	private

	def find_post
		@post = Post.find(params[:id])
    end

	def post_params
		params.require(:post).permit(:title, :link, :description, :user, :image)
	end

	def authorize
		if @post.user != current_user
			redirect_to @post
		end
	end
end
