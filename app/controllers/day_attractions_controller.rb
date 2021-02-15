class DayAttractionsController < ApplicationController

    def index
        day_attractions = DayAttraction.all
        render json: day_attractions
    end

    def create
        day_attraction = DayAttraction.create(day_attraction_params)
        render json: day_attraction
    end

    def update
        day_attraction = DayAttraction.find(params[:id]) 
        day_attraction.update(params.permit(:attraction_id))
        render json: day_attraction
    end

    private

    def day_attraction_params
        params.permit(:day_id, :attraction_id)
    end
end
