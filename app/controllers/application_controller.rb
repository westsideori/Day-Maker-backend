class ApplicationController < ActionController::API
    # def authenticate
    #     current_user = User.first
        
    #     render json: current_user
    # end

    def authenticate
        # read the authorization header from the request
        auth_header = request.headers["Authorization"]
        # get the token out of the header
        token = auth_header.split.last
        # decode the token using JWT
        payload = JWT.decode(token, 'mysecret', true, { algorithm: 'HS256' })[0]
        # get the current user from the decoded payload
        @current_user = User.find(payload["user_id"])
        # @current_user

      rescue
        # if anything goes wrong, send an unauthorized status back
        render json: { errors: ["Not authorized"] }, status: :unauthorized
        
        # fake auth byebye
        # @current_user = User.first
    end
end
