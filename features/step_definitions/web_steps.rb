Given(/^I am on the homepage$/) do
  visit '/'
end

Given(/^I enter a name into the form$/) do
   fill_in('player_name', :with => 'Carrie')
end

When(/^I click "(.*?)"$/) do |link|
  click_on(link)
end

Then(/^I should be taken to a new page "(.*?)"$/) do |text|
  expect(page).to have_content text
end

Given(/^I do not enter a name into the form$/) do
     fill_in('player_name', :with => '')
end

Then(/^I should stay on the homepage "(.*?)"$/) do |text|
  expect(page).to have_content text
end

Given(/^I am on the game page$/) do
	visit '/'
	fill_in('player_name', :with => 'Carrie')
	click_on("submit")
end

Given(/^I enter a choice \(rock, paper, or scissors\) into the form$/) do
  fill_in('player_choice', :with => 'rock')
end

Then(/^I should be taken to _________\?\?$/) do
  pending # express the regexp above with the code you wish you had
end

