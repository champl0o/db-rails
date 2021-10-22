# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Item, type: :model do
  describe 'valid factory' do
    it 'has a valid factory' do
      expect(build(:item)).to be_valid
    end
  end

  describe 'associations' do
    it { is_expected.to belong_to(:owner).class_name('User') }
    it { is_expected.to have_many(:booking) }
    it { is_expected.to have_many(:reviews) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
  end
end
