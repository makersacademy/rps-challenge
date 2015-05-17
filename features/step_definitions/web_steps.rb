Given(/^I am on the homepage$/) do
  visit '/'
end

Then(/^I should see "([^"]*)"$/) do |arg1|
  expect(page).to have_content arg1
end

When(/^I "([^"]*)" in the "([^"]*)" form$/) do |arg1, arg2|
  fill_in(arg2, with: arg1)
end

When(/^I click "([^"]*)"$/) do |arg1|
  click_button(arg1)
end

When(/^I choose "([^"]*)"$/) do |arg1|
  choose(arg1)
end
