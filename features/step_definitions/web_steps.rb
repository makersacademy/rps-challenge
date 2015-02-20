Given(/^I am on the homepage$/) do
  visit('/')
end

Given(/^I enter a name into the form "(.*?)"$/) do |player_name|
  fill_in(player_name, :with => "Chris")
end

When(/^I click "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I should be taken to a new page "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

