class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: :show
  def index
    @restaurants = Restaurant.near(params[:city] || 'Piauí')
    filter_by_category if params[:category]
    render json: @restaurants
  end

  def show
    render json: @restaurants, product_categories: true 
  end

  def search
    @restaurants = Restaurant.search(
      name_or_description_cont: params[:q]
    ).result 
    @restaurants = @restaurants.near(params[:city]) if params[:city]
    render json: @restaurants
  end

  private 

  def filter_by_category
    @restaurants = @restaurants.select do |r|
      r.category_title == params[:category]
    end
  end

  def set_restaurant
    @restaurant = Restaurant.find_by(id: params[:id])
  end
end
