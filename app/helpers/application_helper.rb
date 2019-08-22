module ApplicationHelper
  def home_page?
    params[:controller] == 'pages' && params[:action] == 'home'
  end

  def nav_transparent?
    params[:controller] == 'experiences' && params[:action] == 'show'
  end
end
