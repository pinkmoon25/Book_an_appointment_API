require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'should have corect assoscations' do
    it('has many reservations') do
      user = User.reflect_on_association(:reservations)
      association = user.macro
      expect(association).to eq(:has_many)
    end
    it('has many mentors') do
      user = User.reflect_on_association(:mentors)
      association = user.macro
      expect(association).to eq(:has_many)
    end
  end
  describe 'validation test' do
    it 'should be valid with correct parameters' do
      user = User.new(username: 'test', email: 'example@email.com', password: 'example')
      expect(user).to be_valid
    end
    it 'should be invalid with incorrect parameters' do
      user = User.new(username: '', email: 'example@email.com', password: '')
      expect(user).to_not be_valid
    end
  end
end
