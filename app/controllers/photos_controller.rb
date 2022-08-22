class PhotosController < ApplicationController
    def index
        photo = Photo.all
        render json: photo.as_json
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

    def show
        photo = Photo.find_by(id: params[:id])
        render json: photo.as_json
    end

    def update
        photo = Photo.find_by(id: params[:id])
        photo.name = params[:name] || photo.name
        photo.width = params[:width] || photo.width
        photo.height = params[:height] || photo.height
        photo.save
        render json: photo.as_json
    end

    def destroy
        photo = Photo.find_by(id: params[:id])
        photo.destroy
        render json: {message: "Photo destroyed successfully."}
    end


end
