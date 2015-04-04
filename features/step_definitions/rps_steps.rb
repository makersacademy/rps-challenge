Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^I enter 'James' in 'Name'$/) do
  fill_in 'name', with: 'James'
end

When(/^I click 'Start game'$/) do
  click_button 'Start game'
end

Then(/^I should see '(.*)'$/) do |text|
  expect(page).to have_content(text)
end

Given(/^I have registered as before$/) do
  visit '/'
  fill_in 'name', with: 'James'
  click_button 'Start game'
end

When(/^I select 'Rock'$/) do
  click_link 'rock'
end

When(/^my opponent selects 'Scissors'$/) do
end