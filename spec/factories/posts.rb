FactoryBot.define do
  factory :post do
    title { Faker::Lorem.word }
    content { Faker::Lorem.paragraph }
    ip { ["100.50.10.20", "177.72.62.1"].shuffle.first }
    user_id { Faker::Number.between(1, 10) }
  end
end