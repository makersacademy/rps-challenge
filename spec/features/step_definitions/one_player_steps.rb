def make_choice
  @computer_choice = :scissors
end  

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
  page.should have_content(arg1)
end

Given(/^I have started a one player game$/) do
  visit '/one_player'
end

Given(/^I submit the form$/) do
  click_on('Submit')
end

Given(/^I choose rock and the computer chooses scissors$/) do
  make_choice  
  click_on('rock')
end

Given(/^I choose paper and the computer chooses scissors$/) do
  make_choice  
  click_on('paper') 
end

Given(/^I choose scissors and the computer chooses scissors$/) do
  make_choice
  click_on('scissors')
end





