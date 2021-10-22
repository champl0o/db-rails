# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'valid factory' do
    it 'has a valid factory' do
      expect(build(:user)).to be_valid
    end
  end

  describe 'associations' do
    it { is_expected.to belong_to(:city) }
    it { is_expected.to have_many(:items).with_foreign_key('owner_id') }
    it { is_expected.to have_many(:bookings) }
    it { is_expected.to have_many(:reviews) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:password) }
  end

  describe '#item_reviewable?' do
    let(:item) { create(:item) }
    let(:user) { create(:user) }
    let(:booking) { create(:booking, item: item, user: user) }

    it 'should return true if item belongs to user bookings' do
      expect(user).to receive(:item_reviewable?).with(item).and_return(true)
      result = user.item_reviewable?(item)
      expect(result).to be_truthy
    end

    let(:item) { create(:item) }
    it 'should return false if item doesnt belong to user bookings' do
      expect(user).to receive(:item_reviewable?).with(item).and_return(false)
      result = user.item_reviewable?(item)
      expect(result).to be_falsey
    end
  end

  describe '#owner_reviewable?' do
    let(:user) { create(:user) }
    let(:owner) { create(:user) }
    let(:item) { create(:item, owner: owner) }
    let(:booking) { create(:booking, item: item, user: user) }

    it 'should return true if user owns some booked items' do
      expect(user).to receive(:owner_reviewable?).with(owner).and_return(true)
      result = user.owner_reviewable?(owner)
      expect(result).to be_truthy
    end

    let(:item) { create(:item) }
    it 'should return false if user doesnt own any booked items' do
      expect(user).to receive(:owner_reviewable?).with(owner).and_return(false)
      result = user.owner_reviewable?(owner)
      expect(result).to be_falsey
    end
  end
end
