Given(/^I am on the homepage$/) do
  visit('/')
end

When(/^I follow "([^"]*)"$/) do |arg1|
  click_link('New Game')
end

Then(/^I should be taken to the registration page$/) do
  visit('/registration')
end

Then(/^I should see the "([^"]*)" field$/) do |arg1|
  page.should have_content("What's your name?")
end

Then(/^I should see a "([^"]*)" button$/) do |arg1|
  find_button("Rock").click
end
