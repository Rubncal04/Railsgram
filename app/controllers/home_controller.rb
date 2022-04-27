class HomeController < ApplicationController
  def index
    # byebug
    if current_user.present?
      @images = Image.order(id: :desc).where user_id: current_user.id
    end
  end
end
