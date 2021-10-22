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
    it { is_expected.to belong_to(:user) }
  end
end
