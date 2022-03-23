class UsersController < ApplicationController
    def show
        u= User.find(session[:user_id])
        render json: u, status: :ok
    end

end
