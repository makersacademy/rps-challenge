Given(/^I am on the homepage$/) do
  visit('/')
end

Given(/^I can see "([^"]*)"$/) do |arg1|
  (page).has_content? arg1
end

When(/^I click the "([^"]*)" button$/) do |arg1|
  click_button(arg1)
end

Then(/^I should see the "([^"]*)" field$/) do |arg1|
  find_field(arg1).value
end

Given(/^I am on the registration page$/) do
  visit('/registration')
end

When(/^I fill in "([^"]*)"$/) do |arg1|
  fill_in('Name', :with => arg1)
end

When(/^I click "([^"]*)"$/) do |arg1|
  click_button(arg1)
end

Then(/^I should see "([^"]*)"$/) do |arg1|
  (page).has_content? "Hello #{arg1}"
end

Given(/^I am on the game page$/) do
  visit('/game')
end

Then(/^I should see my possible choices$/) do
  page.has_xpath?('//table/tr')
end

When(/^I click "([^"]*)" button$/) do |choice|
  click_button(choice)
end

Then(/^I should have chosen "([^"]*)"$/) do |arg1|
move = double :player, @move
  expect
end

