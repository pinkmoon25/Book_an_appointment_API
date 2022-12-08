class RemoveSubjectFromReservations < ActiveRecord::Migration[7.0]
  def change
    remove_column :reservations, :subject, :string
  end
end
