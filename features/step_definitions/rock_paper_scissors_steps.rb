Given(/^I am on the homepage$/) do
  visit '/'
end

Given(/^I start a one player game$/) do
  choose('1_player')
end

Given(/^I click on the submit button$/) do
  click_button('Go!')
end

When(/^I enter "(.*?)" in the field$/) do |arg1|
  fill_in('name', :with => arg1)  
end

When(/^I click the go button$/) do
  click_button('Submit')
end

Then(/^I should see "(.*?)"$/) do |arg1|
  expect(page).to have_content(arg1)
end

When(/^I select the rock option$/) do
  choose('rock')
end

When(/^click the go button$/) do
  click_button('Go!')
end

Given(/^I choose the two player button$/) do
  choose('2_players')
end

When(/^I enter "(.*?)" in one of the fields$/) do |arg1|
  fill_in('player_one_name', :with => arg1)     
end

When(/^I enter "(.*?)" in the other field$/) do |arg1|
   fill_in('player_two_name', :with => arg1)    
end

When(/^I click on the player choice page$/) do
  click_button('Submit names')
end

Given(/^I am on the one player game page$/) do
  visit('/player_1_game')
end

