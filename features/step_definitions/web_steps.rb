Given /^(?:|I )am on (.+) page$/ do |page_name|
  visit path_to(page_name)
end

Given /^I am on the RPS homepage$/ do
  visit '/'
end

Given(/^I start "(.+)" game$/) do |game_type|
  visit '/'
  fill_in 'username', :with => "Gus"
  click_button "Proceed"
  page.choose game_type
  click_button "Start Playing"
end

When /^I enter "(.+)" as a username$/ do |username|
  fill_in 'username', :with => username
end

When /^I press "(.+)" button$/ do |bttn|
  click_button bttn
end

When(/^I choose "(.+)" and press "(.+)"$/) do |hand, bttn|
  page.choose hand
  click_button bttn
end

Then(/^I see message "(.+)"$/) do |message|
  expect(page).to have_content message
end

Then(/^I see game modes to choose and button "(.+)"$/) do |bttn|
  expect(page).to have_field 'game-type'
  expect(page).to have_button bttn
end

Then(/^Result of the game is given and "(.+)" button is made available$/) do |bttn|
  expect(page).to have_button bttn
end