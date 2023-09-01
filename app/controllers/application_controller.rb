class ApplicationController < ActionController::API
  include ActionController::Cookies
  before_action :authorized

  def authorized
    render json: {error: 'Unauthorized request '}, status: :unauthorized unless session.include? :user_id
  end

end
