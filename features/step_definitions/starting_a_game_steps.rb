Given(/^I am on the home page$/) do
  visit('/')
end

When(/^I click 'New Game'$/) do
  click_link('New Game')
end

Then(/^I should see "(.*?)"$/) do |prompt|
  expect(page).to have_content prompt
end