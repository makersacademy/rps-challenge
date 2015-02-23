Given(/^I am on the arena page$/) do
  visit '/arena'
end

When(/^I type "(.*?)"$/) do |weapon|
  fill_in('weapon', :with => 'rock')
end

Then(/^I should see the result$/) do
  visit '/result'
end