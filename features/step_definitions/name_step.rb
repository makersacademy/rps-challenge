Given(/^I am on the name page$/) do
  visit '/name'
end

When(/^I enter "(.*?)"$/) do |name|
  fill_in('name', :with => 'John')
end

Then(/^I should see the board$/) do
  visit '/game'
end