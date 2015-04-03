require 'cucumber/rspec/doubles'

Given(/^I am on the home page$/) do
  visit('/')
end

When(/^I enter "([^"]*)" in the "([^"]*)" field$/) do |text, field|
  fill_in(field, with: text)
end

Then(/^I see "([^"]*)"$/) do |text|
  expect(page).to have_content(text)
end

When(/^I press the "([^"]*)" button$/) do |button|
  click_button(button)
end

Then(/^I see "([^"]*)" with class "([^"]*)"$/) do |_text, klass|
  expect(page).to have_css("h1.#{klass}")
end

When(/^the computer chooses "([^"]*)"$/) do |move|
  Rps.any_instance.stub(:other_move) { move }
end
