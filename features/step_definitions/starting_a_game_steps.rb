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
  # ?? So confused on how to structure these tests
  # expect(game.player1.name).to eq name
  pending
end