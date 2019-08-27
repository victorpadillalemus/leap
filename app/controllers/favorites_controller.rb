class FavoritesController < ApplicationController
  before_action :set_experience, only: [:create]
  before_action :set_favorite, only: :destroy


  def index
    @favorites = policy_scope(Favorite)
  end

  def create
    @experience = Experience.find(params[:experience_id])
    @favorite = Favorite.create(experience: @experience, user: current_user)
    respond_to do |format|
      format.html { redirect_to experiences_path }
      format.js { render :update }
    end
    authorize(@favorite)
  end

  def destroy
    @experience = @favorite.experience
    authorize(@favorite)
    @favorite.destroy
    respond_to do |format|
      format.html { redirect_to @experience, notice: "Leap has been deleted from favorites" }
      format.js { render :update }
    end
  end

  private

  def set_experience
    @experience = Experience.find(params[:experience_id] || params[:id])
  end

  def set_favorite
    @favorite = Favorite.find(params[:id])
  end
end
