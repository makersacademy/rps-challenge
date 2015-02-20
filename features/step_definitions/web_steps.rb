Given(/^I am on the homepage$/) do
  visit('/')
end

Given(/^I enter a name into the form "(.*?)"$/) do |player_name|
  fill_in(player_name, :with => "Chris")
end

When(/^I click "(.*?)"$/) do |link|
  click_on(link)
end

Then(/^I should be taken to a new page "(.*?)"$/) do |text|
  expect(page).to have_content text
end

Given(/^I do not enter a name into the form "(.*?)"$/) do |player_name|
  fill_in(player_name, :with => "")
end

Then(/^I should stay on the home page and see "(.*?)"$/) do |text|
  expect(page).to have_content text
end

