class RestaurantsController < ApplicationController

    def index
        restaurants = Restaurant.all
        render json: restaurants
    end

    def show
        restaurant = Restaurant.find(params[:id])
        render json: restaurant
    end

    def beef
        restaurants = Restaurant.where(category: params[:category])
        render json: restaurants
    end

    def create
        restaurant = Restaurant.create(params.permit(:name, :cuisine, :category, :description, :image))
        render json: restaurant
    end


end
