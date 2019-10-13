FactoryBot.define do
  factory :user do
    name {Faker::Name.last_name}
    email {Faker::Internet.free_email}
    password = Faker::Internet.password(min_length: 8)
    encrypted_password {password}
    created_at { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now) }
  end
end
