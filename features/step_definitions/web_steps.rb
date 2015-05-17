Given(/^I am on the homepage$/) do
  visit('/')
end

Given(/^I input my name$/) do
  fill_in('first_name', :with => 'Matt')
end

When(/^I click on "([^"]*)"$/) do |button_txt|
  click_button(button_txt)
end

Then(/^I should visit game page$/) do
  visit('/game')
end

Given(/^I am on game page$/) do
  visit('/game')
end

When(/^I click on rock link$/) do
  click_link('rock')
end

Then(/^I should visit cpu page$/) do
  visit('/cpu?rps=rock')
end

When(/^I click on paper link$/) do
  visit('/cpu?rps=paper')
end

When(/^I click on scissors link$/) do
  visit('/cpu?rps=scissors')
end