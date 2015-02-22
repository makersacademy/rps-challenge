# Scenario 1: Sign up

Given(/^I am on the homepage$/) do
  visit('/')
end

And(/^I fill the "(.*?)" form$/) do |arg1|
  fill_in('name', :with => 'John117')
end

And(/^I press the "(.*?)" button$/) do |arg1|
  click_on('submit')  
end

Then(/^I should receive a "(.*?)" with my chosen name$/) do |arg1|
  page.should have_content('Welcome to Rock Paper Scissors online John117! Play')
end

# Scenario 2: Make a move

Given(/^I am on the homepage after choosing a name$/) do
  visit('/game')
end

And(/^I click on the "(.*?)" link$/) do |arg1|
  click_on("Play")
end

When(/^I select "(.*?)"$/) do |arg1|
  fill_in('element', :with => 'rock')
end

Then(/^I should receive a "(.*?)"$/) do |arg1|
  page.should have_content('You selected rock')
end

