FactoryGirl.define do

  factory :user, class: User do
    sequence :email do |n|
      "user#{n}@ait.asia"
    end
    password 'aaaaaaa'
  end

  factory :article, class: Article do
    title 'Article 1'
    content 'This is a new article'
  end
end