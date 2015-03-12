Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^I enter "(.*?)" in the field$/) do |arg1|
  fill_in('name', :with => arg1)  
end

When(/^I click the submit button$/) do
  click_button('Submit')
end

Then(/^I should see "(.*?)"$/) do |arg1|
  expect(page).to have_content(arg1)
end

When(/^I select the rock option$/) do
  choose('rock')
end

When(/^click the go button$/) do
  click_button('Go!')
end

When(/^The computer selected rock$/) do |pick|
  Capybara.app::GAME.computer.pick = :rock
end
