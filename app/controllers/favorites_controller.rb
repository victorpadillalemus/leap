class FavoritesController < ApplicationController
  before_action :set_experience, only: [:create, :destroy]

  def index
    @favorites = Favorite.all
  end

  def create
    @experience = Experience.find(params[:experience_id])
    @favorite = Favorite.create(experience: @experience, user: current_user)

    if @favorite
    else
      redirect_to @experience, alert: "Something went wrong.."
    end
    if @favorite.save
      respond_to do |format|
        format.js
      end
    end
    authorize(@favorite)
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
