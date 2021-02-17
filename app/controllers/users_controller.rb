class UsersController < ApplicationController
    before_action :authenticate, only: [:show, :update]
    
    def index
        users = User.all
        render json: users
    end
    

    def login
        # lookup a user with their username and password
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
          # if they gave the right info, return that user object
          token = JWT.encode({ user_id: user.id }, 'mysecret', 'HS256')
          render json: { user: UserSerializer.new(user), token: token }
          @current_user = user
        else
          # otherwise, return some error message
          render json: { errors: ["Invalid username or password"] }, status: :unauthorized
        end
    end


    def show
        render json: @current_user
    end

    def signup
        # create a user in the backend
        user = User.create(user_params)
        if user.valid?
          # if the user is created successfully, send back the user
          token = JWT.encode({ user_id: user.id }, 'mysecret', 'HS256')
          render json: { user: UserSerializer.new(user), token: token }
        else
          # otherwise, send back an error
          render json: { errors: user.errors.full_messages }, status: :unauthorized
        end
    end

    def update
        # user = User.find(params[:id])
        @current_user.update(name: params[:name], username: params[:username])
        render json: @current_user
    end

    def days
        puts "hello"
        user_days = Day.where(user_id: params[:id])
        render json: user_days
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
