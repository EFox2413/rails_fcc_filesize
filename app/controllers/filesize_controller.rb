class FilesizeController < ApplicationController
    def index
        @upload = Filestore.new
    end

    def show
        data = params[:fileUpload]

         if data.blank?
           flash[:error] = "No image file selected for upload"
           redirect_to :action => 'new' and return
         end

        size = data.size
        render json: {filesize: size}
    end
end
