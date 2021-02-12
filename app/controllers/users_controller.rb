class UsersController < ApplicationController
    
    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find(params[:id])
        render json: user
    end

    def create
        user = User.create(user_params)
        render json: user
    end

    def update
        user = User.find(params[:id])
        user.update((name: params[:name], username: params[:username])
        render json: user
    end

    def delete
        users = User.all
        user = User.find(params[:id])
        user.destroy
        render json: users
    end

    private

    def user_params
        params.permit(:name, :username, :password)
    end    
end
