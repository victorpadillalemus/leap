class FavoritesController < ApplicationController
  before_action :set_experience, only: [:create, :destroy]

  def index
    @favorites = Favorite.all
  end

  def create
    if Favorite.create(favorited: @experience, user: current_user)
      redirect_to @experience, notice: "Leap has been added to favorites"
    else
      redirect_to @experience, alert: "Something went wrong.."
    end
  end

  def destroy
    Favorite.where(favorited_id: @experience.id, user: current_user.id).first.destroy
    redirect_to @experience, notice: "Leap has been deleted from favorites"
  end

  private

  def set_experience
    @experience = Experience.find(params[:experience_id] || params[:id])
  end
end
