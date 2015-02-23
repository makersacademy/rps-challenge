Given(/^I am on the homepage$/) do
  visit('/')
end

And(/^I enter a name into the form$/) do
  fill_in('player_name', :with => @name)
end

When(/^I press submit$/) do
  click_button('submit')
end

Then(/^I should be taken to the game$/) do
  visit('/welcome')
end

Given(/^I do not enter a name into the form$/) do
  fill_in('player_name', :with => nil)
end

Then(/^I should stay on the homepage$/) do
  visit('/')
end

Given(/^I have started the game$/) do
  visit('/welcome')
end

Then(/^I should see the game$/) do |newgame|
  ('/welcome').should have_content
end