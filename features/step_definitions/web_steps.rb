Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^I follow "([^"]*)"$/) do |link|
  click_link link
end

Then(/^I expect to see "([^"]*)"$/) do |arg1|
  expect(page).to have_content(arg1)
end

