class DaysController < ApplicationController
    before_action :authenticate

    def index
        days = Day.all

        render json: days
    end

    def show
        day = Day.find(params[:id])

        render json: day
    end

    def create
        day = Day.create(day_params)
        day_breakfast = DayRestaurant.create(day_id: day.id, restaurant_id: Restaurant.where(category: "breakfast").sample.id)
        day_lunch = DayRestaurant.create(day_id: day.id, restaurant_id: Restaurant.where(category: "lunch").sample.id)
        day_dinner = DayRestaurant.create(day_id: day.id, restaurant_id: Restaurant.where(category: "dinner").sample.id)
        # 3.times do 
        #     DayAttraction.create(day_id: day.id, attraction_id: Attraction.all.sample.id)
        # end
        day_morning = DayAttraction.create(day_id: day.id, attraction_id: Attraction.where(hour: "morning").sample.id)
        day_afternoon = DayAttraction.create(day_id: day.id, attraction_id: Attraction.where(hour: "afternoon").sample.id)
        day_evening = DayAttraction.create(day_id: day.id, attraction_id: Attraction.where(hour: "evening").sample.id)
        # day_attraction2 = DayAttraction.create(day_id: day.id, attraction_id: Attraction.all.sample.id)
        # day_attraction3 = DayAttraction.create(day_id: day.id, attraction_id: Attraction.all.sample.id)
        render json: day
    end

    def destroy
        day = Day.find(params[:id])
        day.destroy
    end

    def days
        user_days = Day.where(user_id: @current_user.id)
        render json: user_days
    end

    private
    
    def day_params
        params.permit(:user_id, :date)
    end
end
