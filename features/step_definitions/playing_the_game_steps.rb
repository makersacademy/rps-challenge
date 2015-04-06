When(/^I select a "([^"]*)" and click "([^"]*)"$/) do |move, button_name|
  choose(move, match: :first)
  click_button(button_name)
end

When(/^I click the "([^"]*)" button$/) do |button_name|
  click_button(button_name)
end