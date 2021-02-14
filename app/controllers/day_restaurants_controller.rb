class DayRestaurantsController < ApplicationController

    def create
        day_restaurant = DayRestaurant.create(day_restaurant_params)
        render json: day_restaurant
    end

    def update
        day_restaurant = DayRestaurant.find(params[:id]) 
        day_restaurant.update(params.permit(:restaurant_id))
    end

    private

    def day_restaurant_params
        params.permit(:day_id, :restaurant_id)
    end
end
