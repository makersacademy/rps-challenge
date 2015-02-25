Given(/^I am on the Play page$/) do
  visit('/play')
end

When(/^I choose a weapon$/) do
  choose('rock')
end

Then(/^I should see the results page$/) do
  visit('/result')
end
