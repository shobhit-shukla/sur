module PagesHelper
  def city_dropdown_text
    if session[:city]
      City.find(session[:city]).name
    else
      'Select city'
    end
  end
end
