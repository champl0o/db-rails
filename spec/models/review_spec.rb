# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Review, type: :model do
  describe 'valid factory' do
    it 'has a valid factory' do
      expect(build(:review)).to be_valid
    end
  end

  describe 'associations' do
    it { is_expected.to belong_to(:reviewable) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:description) }
  end
end
