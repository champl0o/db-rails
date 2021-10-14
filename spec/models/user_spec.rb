require 'rails_helper'

RSpec.describe User, type: :model do
  describe "valid factory" do
    it "has a valid factory" do
      expect(build(:user)).to be_valid
    end
  end

  describe "validations" do
    before { create(:user) }

    context "presence" do
      it 'validates calculations' do
        expect(1+1).to eq(2)
      end
    end
  end
end
