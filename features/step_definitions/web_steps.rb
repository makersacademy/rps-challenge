Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, value|
  fill_in(field, :with => value)
end

When(/^I press "([^"]*)"$/) do |button|
  click_button(button)
end

Then(/^when I click on "([^"]*)"$/) do |link_text|
  click_link(link_text)
end

Then(/^I should be redirected to the play page$/) do
  visit '/play'
end

Given(/^I am on the play page$/) do
  visit '/play'
end

Then(/^I should see "([^"]*)"$/) do |text|
  expect(page).to have_content(text)
end

Then(/^I should see the result which starts out with "([^"]*)"$/) do |text|
  expect(page).to have_content(text)
end