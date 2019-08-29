class PagesController < ApplicationController
  skip_before_action :authenticate_user!, until: [:payment]
  def home
  end

  def filter
  end
end
