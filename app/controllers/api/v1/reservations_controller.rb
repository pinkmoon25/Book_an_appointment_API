class Api::V1::ReservationsController < ApplicationController
  def create
    @reservation = Reservation.new(date: params[:date], user_id: params[:user_id],
                                   mentor_id: params[:mentor_id], subject: params[:subject])
    if @reservation.save
      render json: @reservation.to_json(include: %i[mentor])
    else
      render json: {
        status: 404,
        error: @reservation.errors.full_messages
      }
    end
  end

  def destroy
    user = User.find(id: params[:user_id])
    mentor = user.mentors.find_by(mentor_id: params[:mentor_id])
    reservation = Reservation.find_by(mentor_id: params[:mentor_id]).where(user_id: params[:user_id])
    reservation.destroy
  end
end
