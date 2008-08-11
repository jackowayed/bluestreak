class ImagesController < ApplicationController
  def new
  @image = Image.new
end

  def create
    @image = Image.new(params[:image])
    if @image.save
      flash[:notice] = 'Image was successfully created.'
      redirect_to image_url(@image)
    else
      render :action => :new
    end
  end
end
