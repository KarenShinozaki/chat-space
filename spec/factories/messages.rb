FactoryBot.define do
  factory :message do
    body { Faker::Lorem.sentence }
    image {File.open("#{Rails.root}/public/images/test.png")}
    created_at { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now) }
    user
    group
  end
end
