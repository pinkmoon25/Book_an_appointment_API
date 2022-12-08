class RegistrationsController < ApplicationController
  def create
    user = User.create!(
      username: params['username'],
      email: params['email'],
      password: params['password']
    )

    if user
      session[:user_id] = user.id
      render json: {
        status: :created,
        user: user.to_json(only: %i[id username])
      }
    else
      render json: {
        status: 500,
        message: user.errors.full_messages
      }
    end
  end
end
