FactoryBot.define do
  factory :user do
    login { "#{Faker::Name.name}-#{rand(100)}" }
  end
end