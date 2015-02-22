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

Given(/^I enter a choice \(Rock, Paper, or Scissors\) into the form$/) do
  fill_in('player_choice', :with => 'Rock')
end

Then(/^I should be taken to the result page "(.*?)"$/) do |text|
  expect(page).to have_content text
end

Given(/^I do not enter a choice into the form$/) do
  fill_in('player_choice', :with => '')
end

Then(/^I should stay on the game page "(.*?)"$/) do |text|
  expect(page).to have_content text
end


