class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    render json: user.reservations.to_json(include: %i[mentor]) if user
  end
end
