require 'rails_helper'

RSpec.describe Mentor, type: :model do
  describe 'should have corect assoscations' do
    it('has many skills') do
      mentor = Mentor.reflect_on_association(:skills)
      association = mentor.macro
      expect(association).to eq(:has_many)
      end
    it('has many users') do
      mentor = Mentor.reflect_on_association(:users)
      association = mentor.macro
      expect(association).to eq(:has_many)
    end 
    it('has many reservations') do
      mentor = Mentor.reflect_on_association(:reservations)
      association = mentor.macro
      expect(association).to eq(:has_many)
    end 
  end
end
