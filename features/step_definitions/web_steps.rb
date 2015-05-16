Given(/^I am on the homepage$/) do
  visit '/'
end

Given(/^I fill in my name as "([^"]*)"$/) do |arg1|
  fill_in('name' with: => arg1)
end

When(/^I click "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should be taken to a new page and see "([^"]*)"Welcome, Phoebe! What would you like to play\?"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end