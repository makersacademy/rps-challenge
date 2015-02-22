Given(/^that I am on the game page$/) do
  visit '/game'
end

When(/^I click on the "(.*?)" button$/) do |arg1|
  click_on(arg1)
end

Then(/^I should see the result page$/) do
  body.should match "Sweet, here are the results:"
end