Given(/^I am on the home page$/) do
  visit '/'
end

Then(/^I should see "([^"]*)"$/) do |text|
  expect(page).to have_content(text)
end

When(/^I press "([^"]*)"$/) do |button|
  click_button button
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |textbox, entry|
  fill_in textbox, with: entry
end

When(/^I select "([^"]*)" from "([^"]*)"$/) do |selection, dropdown|
  select selection, from: dropdown
end