class ExperiencesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @experiences = Experience.all
  end

  def new
    @experience = Experience.new
  end

  def create
    @experience = Experience.new(experience_strong_params)
    @experience.user = current_user
    if @experience.save
      redirect_to experience_path(@experience)
    else
      render :new

    end
  end

  def show

  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def experience_strong_params
    params.require(:experience).permit(:description, :capacity, :price, :start_time, :end_time, :category, :title, :duration, :meeting_point)
  end

end
