class ExperiencesController < ApplicationController
  before_action :set_experience, only: [:show, :edit, :update, :destroy]
  # skip_before_action :authenticate_user!, only: [:index, :show]
  skip_after_action :verify_authorized, only: [:filter]

  def index
    @search_params = search_strong_params
    @favorite = Favorite.new()
    if params[:search]
      @experiences = SearchExperiences.new(
        params: params[:search],
        experiences: policy_scope(Experience)
      ).call
      session[:booking_data] = params[:search]
    else
      @experiences = policy_scope(Experience)
    end
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
    @experience = Experience.find(params[:id])
    @review = Review.new
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

  def search_strong_params
    params.require(:search).permit(:transit_date, :arrival, :arrive, :departure, :depart, :quantity, :airport)
  end

  def experience_strong_params
    params.require(:experience).permit(:description, :capacity, :price, :start_time, :end_time, :category, :title, :duration, :meeting_point)
  end
end
