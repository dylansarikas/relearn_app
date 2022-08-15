class PhotosController < ApplicationController
    def index
        photos = Photo.all
        render json: photos.as_json
    end

    def create
        photo = Photo.new(
            name = params[:name],
            width = params[:width],
            height = params[:height]
        )
        photo.save
        render json: photo.as_json
    end


end
