class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  def current_user
    @current_user ||= Session.find_by_session_token(current_session_token).user
    return @current_user
  end

  def authorize
    render json: { status: 'Invalid user' } unless @current_user
  end

  def authorize_admin
    render json: { status: 'Invalid user' } unless @current_user && @current_user.category == 'admin'
  end

  private

  def current_session_token
    if request.headers['Authorization']
      request.headers['Authorization'].split(' ')[1]
    else
      render json: { status: 'Session token not found' }
    end
  end
end
