class UsersController < ApplicationController
    before_action :authenticate, only: [:show, :update]
    
    def index
        users = User.all
        render json: users
    end
    
    def login
        user = User.first
        render json: user
    end

    def show
        user = User.find(params[:id])
        render json: user
    end

    # def create
    #     user = User.create(user_params)
    #     render json: user
    # end

    def update
        # user = User.find(params[:id])
        current_user = User.first
        current_user.update(name: params[:name], username: params[:username])
        render json: current_user
    end

    # def delete
    #     users = User.all
    #     user = User.find(params[:id])
    #     user.destroy
    #     render json: users
    # end

    private

    def user_params
        params.permit(:name, :username, :password)
    end    
end
