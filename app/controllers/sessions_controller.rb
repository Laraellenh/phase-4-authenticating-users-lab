class SessionsController < ApplicationController
    def create
        # start a session for the user, make sure they exist
       u = User.find_by!(username: params[:username])
    #    set session user id = to user we found
       session[:user_id] = user.id
       render json: u, status: :ok
    end
    def destroy
        # delete for sessions, always delete by id
        session.delete :user_id
        head :no_content
    end

end
