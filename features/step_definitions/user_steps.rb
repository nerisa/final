Given(/^I am a user$/) do
  @user = FactoryGirl.create :user
end

Given(/^I am logged in$/) do
  visit root_url
  click_link 'Sign in'
  fill_in 'Email', with: @user.email
  fill_in 'Password', with: 'aaaaaaa'
  click_button 'Log in'
end

Given(/^I want to add a new article$/) do
  @article = FactoryGirl.build :article
end

When(/^I visit the articles page$/) do
  visit articles_url
end

Then(/^I should see a list of articles$/) do
  expect(page).to have_content 'Articles'
  expect(page).to have_content 'Title'
  expect(page).to have_content 'Content'
end

When(/^I click the link to add article$/) do
  click_link 'New Article'
end

Then(/^I should see a form for adding articles$/) do
  expect(page).to have_selector('form#new_article')
end

When(/^I submit the form$/) do
  fill_in 'Title', with: @article.title
  fill_in 'Content', with: @article.content
  click_button 'Create Article'
end

Then(/^I should see the details of the article$/) do
  expect(page).to have_content 'Article was successfully created.'
  expect(page).to have_content @article.title
  expect(page).to have_content @article.content
end