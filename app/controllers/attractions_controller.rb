class AttractionsController < ApplicationController

    def index
        attractions = Attraction.all

        render json: attractions
    end

    def show
        attraction = Attraction.find(params[:id])

        render json: attraction
    end

    def beef
        attractions = Attraction.where(hour: params[:hour])
        render json: attractions
    end


end
