class FavoritesController < ApplicationController
  def create
    @experience = Experience.find(params[:experience_id])
  end
end
