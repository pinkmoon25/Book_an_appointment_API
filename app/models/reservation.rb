class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :mentor

  validates :subject, presence: true
  validates :date, presence: true
end
