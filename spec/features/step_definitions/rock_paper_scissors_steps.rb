Given(/^I am on the homepage$/) do
  visit '/'
end

Given(/^I start a one player game$/) do
  click_link('One player')  
end

Given(/^I enter my name "(.*?)"$/) do |arg1|
  fill_in('name', :with => arg1)
end

Then(/^I should see "(.*?)"$/) do |arg1|
  page.has_content?(arg1)
end

Given(/^I have started a one player game$/) do
  visit '/one_player'
end

Given(/^I choose scissors$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^the computer chooses paper$/) do
  pending # express the regexp above with the code you wish you had
end

