Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^I enter my name$/) do
  fill_in('playername', :with=>'Thomas') 
end

When(/^click on "(.*?)"$/) do |arg1|
  click_button('Start Game')
end

Then(/^I will see three options "(.*?)", "(.*?)", "(.*?)"$/) do |arg1, arg2, arg3|
  expect(page).to have_content(arg1)
  expect(page).to have_content(arg2)
  expect(page).to have_content(arg3)
end

#

Given(/^I have registered and see the options$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I choose a weapon$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^the opponent chooses a weapon$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I know if I have won or lost$/) do
  pending # express the regexp above with the code you wish you had
end

#

Given(/^I have made a turn$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I know if I have won or lost$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see my score$/) do
  pending # express the regexp above with the code you wish you had
end

# 

Given(/^the players have taken three turns each$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^one player has a higher score$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^he should know that he is the winner$/) do
  pending # express the regexp above with the code you wish you had
end