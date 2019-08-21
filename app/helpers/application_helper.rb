module ApplicationHelper
  def home_page?
    params[:controller] == 'pages' && params[:action] == 'home'
  end

  def transparent_nav?
    params[:controller] == 'experiences' && params[:action] == 'show'
  end
end
