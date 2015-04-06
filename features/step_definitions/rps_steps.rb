Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^I enter 'James' in 'Name'$/) do
  fill_in :name, with: 'James'
end

When(/^I click 'Start game'$/) do
  click_button 'Start game'
end

Then(/^I should see '(.*)'$/) do |text|
  expect(page).to have_content(text)
end

Given(/^I have registered as before$/) do
  Capybara.session_name = 'player1'
  visit '/'
  fill_in 'name', with: 'James'
  click_button 'Start game'
end

Given(/^the other player has also registered$/) do
  Capybara.session_name = 'player2'
  visit '/'
  fill_in 'name', with: 'George'
  click_button 'Start game'
end

When(/^I select 'Rock'$/) do
  Capybara.session_name = 'player1'
  click_link 'rock'
end

When(/^my opponent selects 'Scissors'$/) do
  Capybara.session_name = 'player2'
  click_link 'scissors'
end