class RestaurantsController < ApplicationController
  RESTAURANTS = {
    1 => { name: "Dishoom", address: "Shoreditch, London", category: "indian" },
    2 => { name: "Sushi Samba", address: "City, London", category: "japanese" }
  }

  def index
    @category = params[:food_type]
    @restaurants = RESTAURANTS.select { |id, r| r[:category] == @category }
  end

  def show
    @restaurant = RESTAURANTS[params[:id].to_i]
  end

  def create
    render plain: "Add to DB restaurant '#{params[:name]}' with address '#{params[:address]}'"
  end
end
