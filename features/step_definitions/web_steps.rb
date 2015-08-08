Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^I click "([^"]*)"$/) do |arg1|
  click_link arg1
end

Then(/^I should see "([^"]*)"$/) do |arg1|
  expect(page).to have_content arg1
end

When(/^I enter "([^"]*)" in "([^"]*)"$/) do |arg1, arg2|
  fill_in arg2, with: arg1
end

When(/^I click button "([^"]*)"$/) do |arg1|
  click_button arg1
end

When(/^I select "([^"]*)" as "([^"]*)"$/) do |arg1, arg2|
  choose arg2, option: arg1
end