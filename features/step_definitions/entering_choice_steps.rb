Given(/^I am on the game page$/) do
  visit '/game'
end

When(/^I select "([^"]*)"$/) do |choice|
  select choice, :from => "selection"
end

Then(/^I should see "([^"]*)" onscreen$/) do |choice|
  expect(page).to have_content(choice)
end
