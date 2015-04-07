Given(/^I am in homepage$/) do
  visit('/')
end

When(/^I click the "([^"]*)" link$/) do |arg1|
  click_link(arg1)
end

Then(/^I should be on start_game page$/) do
  expect(page).to have_content("Welcome")
end

Given(/^I am in start_game page$/) do
  visit('/start_game')
end

When(/^I enter my name$/) do
  fill_in("player_name", with: "Iciar")
end

When(/^I click "([^"]*)" button$/) do |arg1|
  click_button(arg1)
end

Then(/^I should see my name$/) do
  expect(page).to have_content("Iciar")
end
