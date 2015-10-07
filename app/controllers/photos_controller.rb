class PhotosController < ApplicationController
  
  def index
    @photos = Photo.all
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def new
    @photo = Photo.new
    @photo.pic = params[:file]
  end

  def edit
  end

  def create
    @photo = Photo.new(photo_params)

    if @photo.save
      redirect_to @photo, notice: 'Image uploaded successfully'
    else
      render :new
    end



  end

  def update
  end

  def destroy
  end

  private 
    def photo_params
      params.require(:photo).permit(:img, :category, :description, :pic)
    end
end
