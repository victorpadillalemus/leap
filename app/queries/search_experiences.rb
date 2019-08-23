class SearchExperiences
  include TimeHelper
  attr_reader :params

  def initialize(attributes)
    @experiences = attributes[:experiences] || Experience.all
    @params = attributes[:params]
    check_for_aiport
  end

  def call
    experiences = filter_by_airport(params[:airport], @experiences) if params[:airport].present?
    experiences = filter_by_quantity(params[:quantity], experiences) if params[:quantity].present?
    experiences = filter_by_arrive(params[:arrive], experiences) if params[:arrive].present?
    experiences = filter_by_depart(params[:depart], experiences) if params[:depart].present?
    experiences = filter_by_category(params[:category], experiences) if params[:category].present?
    # experiences = filter_by_transit_date(params[:transit_date], experiences) if params[:transit_date].present?
    experiences
  end

  private

  def filter_by_airport(airport, experiences)
    experiences.joins(:airport).where("airports.name ILIKE ?", "%#{airport}%")
  end

  def filter_by_quantity(quantity, experiences)
    experiences.where("capacity >= ?", quantity.to_i)
  end

  def filter_by_arrive(arrive, experiences)
    time = str_time_to_number(arrive)
    experiences.where("start_time >=  ?", time)
  end

  def filter_by_depart(depart, experiences)
    time = str_time_to_number(depart)
    experiences.where("end_time <=  ?", time)
  end

  def filter_by_transit_date(transit_date, experiences)
    # for later
  end

  def filter_by_category(category, experiences)
    experiences.where("category = ?", category)
  end

  def check_for_aiport
    raise "Airport must exist" unless params[:airport].present?
  end
end
