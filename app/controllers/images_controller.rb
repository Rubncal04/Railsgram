class ImagesController < ApplicationController
  before_action :set_image, only: [:show, :edit, :update, :destroy]

  def index
    @images = Image.all
  end

  def new
    @image = Image.new
  end

  def create
    # render plain: params[:image].inspect
    @image = Image.new image_params
    if @image.save
      return redirect_to images_path
    end

    render :new
  end

  def show
  end

  def edit
  end

  def update
    @image.update image_params
    redirect_to @image
  end

  def destroy
    @image.destroy
    redirect_to images_path
  end

  private
  def set_image
    @image = Image.find params[:id]
  end

  def image_params
    params.require(:image).permit :description, :picture
  end
end
