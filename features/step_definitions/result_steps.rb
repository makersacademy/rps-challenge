Then(/^I should see the result of the game$/) do
  expect(page).to have_content(@result)
end