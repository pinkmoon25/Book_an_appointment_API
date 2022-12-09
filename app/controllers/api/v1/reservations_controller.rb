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
    reservation = Reservation.find(params[:id])
    if reservation
      reservation.destroy
      render json: {
        status: 200,
        message: 'reservation deleted successfully'
      }
    else
      render json: {
        error: reservation.errors.full_messages
      }
    end
  end
end
