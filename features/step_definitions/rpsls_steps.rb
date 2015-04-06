Given(/^I am in homepage$/) do
  visit('/')
end

When(/^I click the "([^"]*)" link$/) do |arg1|
  click_link(arg1)
end

Then(/^I should be on start_game page$/) do
  expect(page).to have_content("Welcome")
end

Given(/^I am in start_game page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I enter my name$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I click "([^"]*)" button$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should be on play page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
