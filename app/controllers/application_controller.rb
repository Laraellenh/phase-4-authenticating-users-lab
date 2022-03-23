class ApplicationController < ActionController::API
  include ActionController::Cookies
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  private
  def record_not_found 
    render json: {error: "Not Found"}, status: :not_found
  end

end
