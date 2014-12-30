class PostsController < ApplicationController

	def index
		@posts = Post.all.order_by(id: -1)
	end

	def show
	end

	def new
		@post = current.user.posts.build
	end

	def create
		@post = current.user.posts.build(post_params)

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
		params.require(:post).permit(:title, :link, :description)
	end
end
