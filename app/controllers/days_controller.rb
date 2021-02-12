class DaysController < ApplicationController

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
    end

    private
    
    def day_params
        params.permit(:user_id, :date)
    end
end
