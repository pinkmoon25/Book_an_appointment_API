class AddSubjectToReservations < ActiveRecord::Migration[7.0]
  def change
    add_column :reservations, :subject, :string
  end
end
