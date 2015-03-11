Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^I click "(.*?)"$/) do |link|
  click_link(link)
end

Then(/^I should see "(.*?)"$/) do |text|
  expect(page).to have_content(text)
end

Given(/^I am on game$/) do
  visit '/game'
end


When(/^I fill in "(.*?)" with "(.*?)"$/) do |field, item|
  fill_in(field, :with => item)
end

When(/^I press "(.*?)"$/) do |submit|
  click_button(submit)
end

Given(/^two players "(.*?)" and "(.*?)" have registered$/) do |player1_name, player2_name|
  visit '/'
  visit path_to("/new_game")
  fill_in("player_name", :with => player1_name)
  click_button("submit")
  fill_in("player_name", :with => player2_name)
  click_button("submit")
end

