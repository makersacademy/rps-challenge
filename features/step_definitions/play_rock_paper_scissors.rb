Given(/^I am on the homepage$/) do
  visit('/')
end

Then(/^I should see "([^"]*)"$/) do |text|
  expect(current_path).to have_content(text)
end

When(/^I enter "([^"]*)" in "([^"]*)"$/) do |name, name_field|
  fill_in(name_field, with: name)
end

When(/^I click submit$/) do
  click_button('submit')
end

Given(/^I am on the gamepage$/) do
  visit('/gamepage')
end

When(/^I select "([^"]*)" in "([^"]*)"$/) do |choice, optionfield|
  select(choice, from: optionfield)
end

When(/^I click "([^"]*)"$/) do |button|
  click_button(button)
end