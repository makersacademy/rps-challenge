Given(/^I am on the homepage$/) do
  visit('/')
end

And(/^I enter a name into the form$/) do
  fill_in('player_name', :with => @name)
end

When(/^I press submit$/) do
  click_button('submit')
end

Then(/^I should be taken to a new page "(.*?)"$/) do |newgame|
  visit('/newgame')
end