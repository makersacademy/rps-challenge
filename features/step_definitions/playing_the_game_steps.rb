When(/^I click on "([^"]*)"$/) do |newgame|
visit('/register')
end

When(/^I click "([^"]*)"$/) do |playgame|
visit('/game/new')
end

Then(/^I should see "([^"]*)","([^"]*)" and "([^"]*)"$/) do |arg1, arg2, arg3|
  arg1 = "Rock"
  arg2 = "Paper"
  arg3 = "Scissors"
end


When(/^I select "([^"]*)"$/) do |choice|
 select choice, from: "weapon"
 click_button 'Submit'
end

Then(/^the page will display "([^"]*)"$/) do |outcome|
  expect(page).to have_content outcome
end