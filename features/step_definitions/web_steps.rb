Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^I enter the "([^"]*)" "([^"]*)"\.$/) do |arg1, arg2|
  fill_in(arg1, :with => arg2)
end

When(/^I click "([^"]*)"$/) do |arg1|
   click_button(arg1)
end

Then(/^I should be on the "([^"]*)"$/) do |arg1|
  visit '/game_page'
end