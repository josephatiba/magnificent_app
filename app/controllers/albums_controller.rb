class AlbumsController < ApplicationController

	def index
		@albums = Album.all
	end

	def show
		@album = Album.find(params[:id])
	end

	def new
		@album = Album.new
	end


	def create
		@album = Album.new(album_params)
		if @album.save
			redirect_to user_albums_path
		else
			render "new"
		end
	end

	def edit
		@album = Album.find(params[:id])
	end

	def update
		@album = Album.find(params[:id])
		if @album.update_attributes(album_params)
			redirect_to new_user_album_path(@album)
		else
			render :edit
		end
	end

	def destroy
		@album = Album.find(params[:id])
		if @album.destroy
			redirect_to user_albums_path
		else
			redirect_to user_albums_path(@user)
		end
	end	

	private

	def album_params
		params.require(:album).permit(:name, :date, :description, :user)
	end

end












