class Poster < ActiveRecord::Base

belongs_to :movie
mount_uploader :image, AvatarUploader


def show
    @movie = Movie.find(params[:movie_id])
    @image = @movie.find(params[:id])
end 