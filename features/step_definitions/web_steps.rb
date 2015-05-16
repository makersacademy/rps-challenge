Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, value|
  fill_in(field, :with => value)
end

When(/^I press "([^"]*)"$/) do |button|
  click_button(button)
end

Then(/^I should be redirected to the play page$/) do
  visit '/play'
end
