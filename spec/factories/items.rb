FactoryBot.define do
  factory :item do
    name { "Test" }
    owner factory: :user
  end
end
