Given(/^I am on the player page$/) do
  visit '/player'
end

When(/^I enter "(.*?)"$/) do |name|
  fill_in('name', :with => 'makers')
end

Then(/^I should see the arena$/) do
  visit '/arena'
end