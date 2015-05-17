Given(/^I am on the homepage$/) do
  visit '/'
end

Then(/^I should see "([^"]*)"$/) do |arg1|
  expect(page).to have_content(text)
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |arg1, arg2|
  fill_in('name', :with => 'Dan')
end

When(/^I press "([^"]*)"$/) do |arg1|
  click_button('play')
end

Then(/^I should be on the game page$/) do
  visit '/game'
end