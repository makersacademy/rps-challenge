Given(/^I am on the homepage$/) do
  visit('/')
end

When(/^I follow "([^"]*)"$/) do |arg1|
  click_link('New Game')
end

Then(/^I should be taken to the registration page$/) do
  visit('/registration')
end

Given(/^I am on the registration page$/) do
  visit('/registration')
end

Then(/^I should see the "([^"]*)" field$/) do |arg1|
  find_field("Name")
end

Then(/^I should see a "([^"]*)" button$/) do |arg1|
find_button('Start Game').click
end

When(/^I fill in the form$/) do
  fill_in('Name', :with => 'Paul')
  fill_in('Rock, Paper, Scissors, Lizard or Spock?', :with => 'Rock')
end

When(/^I click the "([^"]*)" button$/) do |arg1|
  click_button("Start Game")
end

Then(/^I am taken to the game page$/) do
  visit('/game')
end

Given(/^I am on the game page$/) do
  visit('/game')
end

Then(/^I can see the result of the game$/) do
end
