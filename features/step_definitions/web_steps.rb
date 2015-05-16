Given(/^I am on the home page$/) do
  visit('/')
end

When(/^I follow "([^"]*)"$/) do |link|
  click_link link
end

Then(/^I should see "([^"]*)"$/) do |text|
  expect(page).to have_content(text)
end

When(/^I fill in the form with "([^"]*)"$/) do |name|
  fill_in('name', :with => name)
end

When(/^I click "([^"]*)"$/) do |button|
  click_button button
end

Given(/^I am on the New Game page$/) do
  visit('/new_game')
end