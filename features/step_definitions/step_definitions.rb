Given(/^I am on the homepage$/) do
  visit '/'
end

Then(/^I should see "([^"]*)"$/) do |arg1|
  page.has_content?("What's your name?")
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |arg1, arg2|
  fill_in('name', :with => 'Dan')
end

When(/^I press "([^"]*)"$/) do |play|
  click_button('play')
end

Then(/^I should be on the game page$/) do
  visit '/new_game'
end

Given(/^I am on the new game page$/) do
  visit '/new_game'
end

# When(/^I press "([^"]*)"$/) do |rock|
#   click_button('Rock')
# end