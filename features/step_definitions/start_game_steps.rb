Given(/^I am on the homepage$/) do
  visit '/'
end

Then(/^I should see "([^"]*)"$/) do |text|
  expect(page).to have_content(text)
end

When(/^I click on "([^"]*)"$/) do |button|
  click_on(button)
end

Given(/^I am on the name entry page$/) do
  visit '/name'
end

When(/^I enter my name, "([^"]*)"$/) do |my_name|
  fill_in('name', with: my_name)
end

When(/^I don't enter anything$/) do
  fill_in('name', with: "")
end