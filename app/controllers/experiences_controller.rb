class ExperiencesController < ApplicationController
  before_action :set_experience, only: [:show, :edit, :update, :destroy]
  # skip_before_action :authenticate_user!, only: [:index, :show]
  skip_after_action :verify_authorized, only: [:filter]

  def index
    # @experiences = Experience.all
    # session[:start_time] = params[:filter][:start_time]
    # session[:end_time] = params[:filter][:end_time]
    # session[:capacity] = params[:filter][:capacity]
    @experiences = policy_scope(Experience)
  end

  def new
    @experience = Experience.new
    authorize(@experience)
  end

  def create
    @experience = Experience.new(experience_strong_params)
    authorize(@experience)
    if @experience.save
      redirect_to @experience, notice: 'Experience was successfully created.'
    else
      render :new

    end
  end

  def show
  end

  def filter
  end

  def edit
  end

  def update
    if @experience.update(experience_strong_params)
      redirect_to @experience, notice: 'Restaurant was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @experience.destroy
  end

  private

  def set_experience
    @experience = Experience.find(params[:id])
    authorize(@experience)
  end

  def experience_strong_params
    params.require(:experience).permit(:description, :capacity, :price, :start_time, :end_time, :category, :title, :duration, :meeting_point)
  end
end
