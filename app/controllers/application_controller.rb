class ApplicationController < ActionController::API
    def authenticate
        current_user = User.first
        
        render json: current_user
    end
end
