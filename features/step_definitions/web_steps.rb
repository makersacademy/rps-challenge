Given(/^I am on the homepage$/) do
  visit('/')
end

When(/^I follow "(.*?)"$/) do |new_game|
  click_link(new_game)
end

When(/^I enter the "(.*?)" page$/) do |name|
  visit('/name1')
end

Then(/^I should be able to enter my name$/) do
  fill_in('name1', :with => 'John')
end

Given(/^I am on the "(.*?)" page$/) do |arg1|
  visit('/name1')
end

When(/^I don't enter my name$/) do
  fill_in('name1', :with => '')
end

Then(/^I see "(.*?)"$/) do |error_name|
  expect(page).to have_content(error_name)
end

Given(/^I am on the choice page$/) do
  visit('/choice1')
end

When(/^I select a radio button$/) do
  choose("Rock")  
end

When(/^press submit$/) do
  click_on("submit")
end

When(/^I see the radio button selectors$/) do
    expect(page).to have_content("Rock")
end

Then(/^I should be able to submit it$/) do
  choose("Rock")  
end

When(/^the first player has selected a symbol$/) do
  choose("Rock")
end

When(/^pressed submit$/) do
  click_on("submit")
end

Then(/^the other player \(computer\) should be given a random symbol$/) do
  
end

When(/^both players have selected a symbol$/) do
 
end

Then(/^the winner of the game should be declared$/) do
 
end



