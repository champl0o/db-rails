require 'rails_helper'

RSpec.describe User, type: :model do
  describe "valid factory" do
    it "has a valid factory" do
      expect(build(:user)).to be_valid
    end
  end

  describe "associations" do
    it { should have_many(:items).class_name('Item').with_foreign_key('owner_id') }
    it { should have_many(:bookings).class_name('Booking') }
    it { should have_many(:reviews) }
  end

  describe "validations" do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password) }
  end
end
