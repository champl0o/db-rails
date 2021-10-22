# frozen_string_literal: true

require 'rails_helper'

RSpec.describe City, type: :model do
  describe 'valid factory' do
    it 'has a valid factory' do
      expect(build(:city)).to be_valid
    end
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
  end

  describe 'associations' do
    it { is_expected.to have_many(:users) }
  end

  describe '#items' do
    let(:city) { create(:city) }
    let(:user) { create(:user, city: city) }
    let(:item) { create(:item, owner: user) }

    it 'return item list if there is one or more items' do
      expect(city).to receive(:items).and_return(item)
      result = city.items
      expect(result).to eq(item)
    end
  end
end
