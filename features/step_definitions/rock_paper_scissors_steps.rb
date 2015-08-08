Given(/^that I am on the homepage$/) do
  visit '/'
end

Given(/^that I am on the start page$/) do
  visit '/start'
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |arg1, arg2|
  fill_in(arg1, with: arg2)
end

When(/^I click "([^"]*)"$/) do |arg1|
  click_button(arg1)
end

Then(/^I should see "([^"]*)"$/) do |arg1|
  expect(page).to have_content(arg1)
end