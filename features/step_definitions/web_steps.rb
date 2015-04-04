Given(/^I visit the homepage$/) do
  visit '/'
end

When(/^I enter my name$/) do
  fill_in('name', with: 'Dan')
end

When(/^I click "([^"]*)"$/) do |arg1|
  click_button(arg1)
end

Then(/^I should see "([^"]*)"$/) do |arg1|
  expect(page).to have_content(arg1)
end

Given(/^I register$/) do
  visit '/'
  fill_in('name', with: 'Dan')
  click_button("Start Game")
end

When(/^I click a photo of a "([^"]*)"$/) do |arg1|
  click_link(arg1)
end

Then(/^I should see a photo of a "([^"]*)"$/) do |arg1|
  expect(page).to have_selector("##{arg1}")
end

Then(/^I should see who won$/) do
  expect(page).to have_selector("#result")
end

Then(/^I should what the computer picked$/) do
  expect(page).to have_selector("#computers-pick")
end
