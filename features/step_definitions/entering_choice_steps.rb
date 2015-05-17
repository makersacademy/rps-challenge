Given(/^I am on the game page$/) do
  visit '/game'
end

When(/^I select "([^"]*)"$/) do |choice|
  select choice, from: "selection"
end

Then(/^"([^"]*)" should be saved$/) do |weapon|
  expect(@choice).to eq weapon
end