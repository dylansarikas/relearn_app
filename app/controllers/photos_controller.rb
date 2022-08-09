class PhotosController < ApplicationController
    def index
        photos = Photos.all
        render json: photos.as_json
    end

end
