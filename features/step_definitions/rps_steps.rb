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

#

Given(/^I have registered and see the options$/) do
  visit('/register')
  fill_in('playername', :with=>'Thomas') 
  click_button('Start Game')
  find('form#rps')
end

When(/^I choose a weapon$/) do
  choose('rock')
  click_button('Choose')
end


Then(/^I should see my score$/) do
  expect(page).to have_content("You:")
end

# 

Given(/^the players have taken three turns each$/) do
  visit('/register')
  fill_in('playername', :with=>'Thomas') 
  click_button('Start Game')
  
  find('form#rps')
  choose('rock')
  click_button('Choose')

  # find('form#rps')
  # choose('scissor')
  # click_button('Choose')

  # find('form#rps')
  # choose('paper')
  # click_button('Choose')
end

When(/^one player has a higher score$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^he should know that he is the winner$/) do
  pending # express the regexp above with the code you wish you had
end