
Given(/^I am on the homepage$/) do
  visit "/"
end

When(/^I click "([^"]*)"$/) do |arg1|
  click_link arg1
end

When(/^I enter "([^"]*)" in the "([^"]*)" field$/) do |arg1, arg2|
  fill_in(arg2, :with => arg1)
end

When(/^I click the "([^"]*)" button$/) do |arg1|
  click_button arg1
end

Then(/^I should see "([^"]*)"$/) do |arg1|
  expect(page).to have_content arg1
end

Given(/^I filled out the registration page$/) do
  visit "/"
  click_link "1 player game"
  fill_in('name', :with => 'Bob')
  click_button 'submit'
end