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
  Rps.any_instance.stub(:other_move) { move.to_sym }
end

When(/^I am on the "([^"]*)" page$/) do |page|
  visit('/' << page)
end

When(/^I am in (.*) browser$/) do |name|
  Capybara.session_name = name
end

When(/^(?!I am in)(.*(?= in)) in (.*) browser$/) do |other_step, name|
  step "I am in #{name} browser"
  step other_step
end

Then(/^I see a "([^"]*)" button$/) do |button|
  expect(page).to have_selector("button[value='#{button}']")
end

When(/^I wait (\d+) seconds$/) do |seconds|
  sleep(seconds.to_i)
end
