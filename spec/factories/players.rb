FactoryBot.define do
  factory :player do
    username { Faker::Internet.username }
    password { 'password' }
    email { Faker::Internet.email }
    
    
  end
end
