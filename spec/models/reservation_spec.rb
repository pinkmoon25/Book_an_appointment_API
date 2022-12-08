require 'rails_helper'

RSpec.describe Reservation, type: :model do
  describe 'should have corect assoscations' do
    it('belongs to user') do
      reservation = Reservation.reflect_on_association(:user)
      association = reservation.macro
      expect(association).to eq(:belongs_to)
    end
    it('belongs to mentor') do
      reservation = Reservation.reflect_on_association(:mentor)
      association = reservation.macro
      expect(association).to eq(:belongs_to)
    end
  end
  describe 'validation test' do
    before(:example) do
      @user = User.first
      @mentor = Mentor.first
    end
    it 'should be valid with correct parameters' do
      reservation = Reservation.new(user: @user , subject: 'ruby', mentor: @mentor, date: '2022-12-12')
      expect(reservation).to be_valid
    end
    it 'should be invalid with incorrect parameters' do
      reservation = Reservation.new(user: @user, subject: '', mentor: @mentor, date: '')
      expect(reservation).to_not be_valid
    end
  end
end
