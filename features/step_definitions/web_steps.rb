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

Then(/^I should stay on the home page and see "(.*?)"MAM$/) do |text|
  expect(page).to have_content text
end

When(/^I choose a radio button "(.*?)"$/) do |weapon|
  page.choose(weapon)
end

When(/^I do not choose a radio button$/) do
  # express the regexp above with the code you wish you had
end

Given(/^I am on the result page$/) do
  visit('/')
  fill_in("player_name", :with => "Chris")
  click_on("submit")
  page.choose("scissors")
  click_on("Fight!")
end

When(/^I cick "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end