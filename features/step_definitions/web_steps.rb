Given (/^I am on the homepage$/) do
  visit('/')
end

When(/^I click "([^"]*)"$/) do |arg1|
  click_link(arg1)
end



Then(/^I should see "([^"]*)"$/) do |text|
  expect(page).to have_content text
end