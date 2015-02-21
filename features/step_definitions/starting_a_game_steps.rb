Given(/^I am on the home page$/) do
  visit('/')
end

When(/^I click 'New Game'$/) do
  click_link('New Game')
end

Then(/^I should see "(.*?)"$/) do |prompt|
  expect(page).to have_content prompt
end


Given(/^I have clicked new game$/) do
  visit('/')
  click_link('New Game')
end

When(/^I enter my name "(.*?)"$/) do |name|
  fill_in("name", with: name)
  click_button("Submit")
end

Then(/^the page should show "(.*?)"$/) do |message|
  expect(page).to have_content message
end

Then(/^offer a link to "(.*?)"$/) do |play_computer|
  expect(page).to have_content play_computer
end

# !! ** !!
# Okay so all these links are executed in sequence..
# Meaning that by going through the steps again to visit
# The waiting page adds a second player to the game, which I do not want.
# SO.. do I just do nothing in the Given step here?
# Hmm.
