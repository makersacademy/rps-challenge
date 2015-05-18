Given(/^I am on the Game page$/) do
  visit('/game')
end

When(/^I choose a weapon$/) do
  choose('rock')
end

Then(/^I should see the results page$/) do
  visit('/outcome')
end
