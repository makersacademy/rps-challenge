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