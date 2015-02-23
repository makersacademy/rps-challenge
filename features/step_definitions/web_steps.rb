#Scenario registering

Given(/^I am on the homepage$/) do
  visit ('/')
end

When(/^I follow "(.*?)"$/) do |register|
  click_on('New Game')
end

Then(/^I should see "(.*?)"$/) do |form|
  expect(page).to have_content("What's your name?")
end

#Scenario no name

Given(/^I am on the register page$/) do
  visit ('/register')
end

When(/^I don't enter my name$/) do
  fill_in('name', :with => ' ')
end

Then(/^I see "(.*?)"$/) do |error_name|
  page.any_instance.stub.(:empty?).and_return{"Please enter your name"}
  expect(page).to have_content("Please enter your name")
end