Given(/^I am on the home '\/' page$/) do
  visit('/')
end

When(/^I fill_in my "(.*?)"$/) do |name|
  fill_in 'player_name', :with => name
end

When(/^I click "(.*?)"$/) do |button_name|
  click_button(button_name)
end

Then(/^I should see "(.*?)"$/) do |content|
  expect(page).to have_content content
end

Given(/^I am on the home '\/new_player' page$/) do
  visit '/new_player'
end

When(/^I fill_in my choice "(.*?)"$/) do |choices|
  fill_in 'choice', :with => choices
end



