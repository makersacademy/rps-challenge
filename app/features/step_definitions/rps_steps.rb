Given(/^I am on the homepage$/) do
  visit('/')
end

When(/^I follow "(.*?)"$/) do |new_game|
  click_on(new_game)
end

Then(/^I should see "(.*?)"$/) do |message|
  page.should have_content(message)
end

###################################################################


Given(/^I have entered my name$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I choose the correct answer$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should either win or lose$/) do
  pending # express the regexp above with the code you wish you had
end