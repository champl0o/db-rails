require 'rails_helper'

RSpec.describe Booking, type: :model do
  describe 'valid factory' do
    it 'has a valid factory' do
      expect(build(:booking)).to be_valid
    end
  end

  describe 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:item) }
  end
end