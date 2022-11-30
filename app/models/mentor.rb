class Mentor < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_many :users, through: :reservations
  has_many :skills, dependent: :destroy
end
