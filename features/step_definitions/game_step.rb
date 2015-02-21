Given(/^that I am on the game page$/) do
  visit '/game'
end

When(/^I click on the "(.*?)" button$/) do |arg1|
  click_on(arg1)
end

Then(/^I should see my result$/) do
  pending # express the regexp above with the code you wish you had
end