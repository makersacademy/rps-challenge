Given(/^I am on the home page$/) do
  visit('/')
end

When(/^I click 'New Game'$/) do
  click_link('New Game')
end

Then(/^I should see "(.*?)"$/) do |prompt|
  expect(page).to have_content prompt
end


Given(/^I have started a new game$/) do
  visit('/')
  click_link('New Game')
end

When(/^I enter my name$/) do
  fill_in('name', with: "Erik")
  click_button('Submit')
end

Then(/^I Player 1s name should be "(.*?)"$/) do |name|
  pending # express the regexp above with the code you wish you had
end