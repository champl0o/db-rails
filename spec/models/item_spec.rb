require 'rails_helper'

RSpec.describe Item, type: :model do
  describe 'valid factory' do
    it 'has a valid factory' do
      expect(build(:item)).to be_valid
    end
  end

  describe 'associations' do
    it { should belong_to(:owner).class_name('User') }
    it { should have_many(:booking) }
    it { should have_many(:reviews) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
  end
end
