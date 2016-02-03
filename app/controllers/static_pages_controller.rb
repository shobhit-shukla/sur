class StaticPagesController < ApplicationController
  skip_before_filter :authenticate_user!
  before_action :set_default_city
  before_action :get_all_cities, only: [:home, :set_city]

  def home
    @city = City.find session[:city]
  end

  def set_city
    session[:city] = params[:id]
    redirect_to :back
  end

  private

  def get_all_cities
    @cities = City.all
  end

  def set_default_city
    session[:city] ||= City.first.id
  end
end
