class PhotosController < ApplicationController

  def index
    @photos = Photo.order('created_at desc')
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      flash[:success] = "The photo was added!"
      redirect_to photos_path
    else
      render 'new'
    end
  end

  def destroy
    Photo.find(params[:id]).destroy
    flash[:success] = "Photo deleted"
    redirect_to photos_path
  end


 private

  def photo_params
    params.require(:photo).permit(:image, :title)
  end




end
