Given(/^a user is on the homepage$/) do
  visit '/'
end

Then(/^they should see "([^"]*)"$/) do |arg1|
  expect(page).to have_content(arg1)
end

When(/^they fill in "([^"]*)" in the new_player field$/) do |name|
  fill_in('player', with: name)
end

When(/^they press the "([^"]*)" button$/) do |register|
  click_button(register)
end

Then(/^they see "([^"]*)"$/) do |arg1|
  expect(page).to have_content?(arg1)
end

Given(/^a user is on the game page$/) do
  visit '/game'
end

# When(/^they press the "([^"]*)" button$/) do |move|
#   click_button(move)
# end
