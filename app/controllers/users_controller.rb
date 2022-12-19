class UsersController < ApplicationController
  def index
    user = User.find_by(id: params[:user_id])
    render json: User.all.to_json(only: %i[id username admin]) if user&.admin
  end

  def show
    user = User.find(params[:id])
    render json: user.reservations.to_json(include: %i[mentor]) if user
  end

  def toggle_status
    user = User.find(params[:id])
    if user
      user.admin = !user.admin
      render json: user.to_json(only: %i[id username admin]) if user.save
    else
      render json: {
        error: user.errors.full_messages
      }
    end
  end

  def destroy
    user = User.find(params[:id])
    if user
      user.destroy
      render json: {
        status: 200,
        message: 'success'
      }
    else
      render json: {
        error: user.errors.full_messages
      }
    end
  end
end
