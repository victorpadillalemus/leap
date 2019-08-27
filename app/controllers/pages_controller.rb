class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :filter, :search]
  def home
  end

  def filter
  end
end
