Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^I enter "([^"]*)"$/) do |player_name|
  fill_in('player_name', with: player_name)
end

When(/^I enter "([^"]*)" and click "([^"]*)"$/) do |player_name, button_name|
  fill_in('player_name', with: player_name)
  click_button(button_name)
end

Then(/^I should see "([^"]*)"$/) do |welcome_message|
  expect(page).to have_content(welcome_message)
end
