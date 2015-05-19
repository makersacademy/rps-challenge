Given(/^I am on the homepage$/) do
  visit('/')
end

Then(/^I should see "([^"]*)"$/) do |text|
  expect(page).to have_content(text)
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

Given(/^I am playing the game as "([^"]*)"$/) do |name|
  visit('/')
  fill_in('player1', with: name)
  click_button('submit')
end

Given(/^the computer chooses "([^"]*)"$/) do |choice|
  allow_any_instance_of(RPS).to receive(:go).and_return(choice)
end