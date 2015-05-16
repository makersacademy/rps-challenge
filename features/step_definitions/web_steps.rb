Given(/^I am on the homepage$/) do
  visit('/')
end

Given(/^I am on the register page$/) do
  visit('/game/new')
end

When(/^I follow "([^"]*)"$/) do |link|
  click_link(link)
end

Then(/^I should see "([^"]*)"$/) do |text|
   page.should have_content(text)
end

When(/^I fill in name with "([^"]*)"$/) do |arg1|
  fill_in('name', :with => 'Andy')
end

When(/^I fill in rounds with "([^"]*)"$/) do |arg1|
  fill_in('rounds', :with => '6')
end

When(/^I click "([^"]*)"$/) do |arg1|
  click_button('submit')
end