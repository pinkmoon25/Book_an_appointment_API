class SessionsController < ApplicationController
  before_action :set_current_user

  def create
    user = User.find_by(username: params['username'])

    if user&.authenticate(params['password'])
      session[:user_id] = user.id
      render json: {
        status: :created,
        logged_in: true,
        user: user.to_json(only: %i[id username])
      }
    else
      render json: {
        status: 401
      }
    end
  end

  def logged_in
    if @current_user
      render json: {
        user: @current_user.to_json(only: %i[id username]),
        logged_in: true
      }
    else
      render json: {
        logged_in: false
      }
    end
  end

  def logout
    reset_session
    render json: {
      status: 200,
      logged_out: true
    }
  end

  protected

  def set_current_user
    @current_user = User.find(session[:user_id]) if session[:user_id]
  end
end
