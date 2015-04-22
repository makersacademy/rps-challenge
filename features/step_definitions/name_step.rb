Given(/^I am on the name page$/) do
  visit '/name'
end

When(/^I enter "(.*?)"$/) do |name|
  fill_in('name', :with => 'Sammy')
end

Then(/^I should see the game$/) do
  visit '/game'
end