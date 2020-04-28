class ApplicationController < ActionController::API

    before_action :authorized

    def issue_token(user)
        JWT.encode({user_id: user.id}, Rails.application.secret_key_base, 'HS256')
    end

    def token
        request.headers['Authorization']
    end

    def current_user
        @user ||= User.find_by(id: user_id)
    end

    def decoded_token
        begin
          JWT.decode(token, Rails.application.secret_key_base, true, { :algorithm => 'HS256' })
        rescue JWT::DecodeError
          [{error: "Invalid Token"}]
        end
    end

    def user_id
        decoded_token.first['user_id']
    end
    
    def logged_in?
        !!current_user
    end

    def authorized
        render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
    end
    
end
