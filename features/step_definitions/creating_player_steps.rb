Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^I enter "([^"]*)", select "([^"]*)" and click "([^"]*)"$/) do |player_name, radio, button_name|
  fill_in('player_name', with: player_name)
  choose('type', option: radio)
  click_button(button_name)
end

Then(/^I should see "([^"]*)"$/) do |welcome_message|
  expect(page).to have_content(welcome_message)
end

When(/^I am in "([^"]*)" browser$/) do |player|
  Capybara.session_name = player
end