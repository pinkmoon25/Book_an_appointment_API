class Mentor < ApplicationRecord
  has_many :reservations
  has_many :users, through: :reservations
  has_many :skills
end
