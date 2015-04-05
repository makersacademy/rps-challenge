When(/^I select "([^"]*)" and click "([^"]*)"$/) do |move, button_name|
  pending
  choose('move', match: :first)
  click(button_name)
end