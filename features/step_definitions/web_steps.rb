Given(/^I am on the homepage$/) do
  visit('/')
end

Given(/^I am on the register page$/) do
  visit('/game/new')
end

Given(/^I am on the choose page$/) do
  visit('/game/choose')
end

When(/^I follow "([^"]*)"$/) do |link|
  click_link(link)
end

Then(/^I should see "([^"]*)"$/) do |text|
  page.should have_content(text)
end

When(/^I fill in name with "([^"]*)"$/) do |text|
  fill_in('name', with: text)
end

When(/^I fill in rounds with "([^"]*)"$/) do |integer|
  fill_in('rounds', with: integer)
end

When(/^I click "([^"]*)"$/) do |button|
  click_button(button)
end

When(/^I choose 'Rock'$/) do
  choose('choice_rock')
end