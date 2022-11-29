class AddRefToReservation < ActiveRecord::Migration[7.0]
  def change
    add_reference :reservations, :user, null: false, foreign_key: true
    add_reference :reservations, :mentor, null: false, foreign_key: true
  end
end
