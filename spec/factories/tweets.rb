FactoryBot.define do
  factory :tweet do
    text {"hello!"}
    image {"hoge.png"}
    user
    created_at { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now) }
  end
end