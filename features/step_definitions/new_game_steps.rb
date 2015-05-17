Given(/^I am on the homepage$/) do
  visit '/'
end

Given(/^I am on the result page$/) do
  visit '/result'
end

Given(/^I am on the let's play page$/) do
  visit '/playagain'
end

Then(/^I should see "([^"]*)"$/) do |text|
  expect(page).to have_content(text)
end

When(/^I click on "([^"]*)"$/) do |button|
  click_on(button)
end

When(/^I enter my name, "([^"]*)"$/) do |my_name|
  fill_in('name', with: my_name)
end

When(/^I don't enter anything$/) do
  fill_in('name', with: "")
end