def make_choice
  computer = Computer.new
  computer.selection = :scissors
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
  page.has_content?(arg1)
end

Given(/^I have started a one player game$/) do
  visit '/one_player'
end

Given(/^I submit the form$/) do
  click_on('Submit')
end

Given(/^I choose scissors and the computer chooses paper$/) do
  click_on('scissors')
  make_choice
end

Given(/^I choose paper and the computer chooses scissors$/) do
  click_on('paper')
  make_choice   
end

Given(/^I choose scissors and the computer chooses scissors$/) do
  click_on('scissors')
  make_choice
end



