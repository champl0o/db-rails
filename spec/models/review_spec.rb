require 'rails_helper'

RSpec.describe Review, type: :model do
  describe 'valid factory' do
    it 'has a valid factory' do
      expect(build(:review)).to be_valid
    end
  end

  describe 'associations' do
    it { should belong_to(:reviewable) }
  end

  describe 'validations' do
    it { should validate_presence_of(:description) }
  end
end
