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

#________________

Given(/^I have registered and see the options$/) do
  visit('/register')
  fill_in('playername', :with=>'Thomas') 
  click_button('Start Game')
  find('form#rps')
end

When(/^I choose a weapon$/) do
  choose('weapon_1')
  click_button('Choose')
end


Then(/^I should see my score$/) do
  expect(page).to have_content("Your count:")
end

#________________

Given(/^the players have taken three turns each$/) do
  visit('/register')
  fill_in('playername', :with=>'Thomas') 
  click_button('Start Game')
  
  find('form#rps')
  choose('weapon_1')
  click_button('Choose')

  find('form#rps')
  choose('weapon_1')
  click_button('Choose')

  find('form#rps')
  choose('weapon_1')
  click_button('Choose')
end

Then(/^he should know that he is the winner$/) do
  expect(page).to have_content("Thomas has won")
end