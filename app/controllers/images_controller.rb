class ImagesController < ApplicationController

  def new
  end

  def create
    # render plain: params[:image].inspect
    @picture = Image.new image_params
    @picture.save
  end

  private
  def image_params
    params.require(:image).permit :description
  end
end
