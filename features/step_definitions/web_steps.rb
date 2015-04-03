Given(/^I am on the home page$/) do
  visit('/')
end

When(/^I enter "([^"]*)" in the "([^"]*)" field$/) do |text, field|
  fill_in(field, with: text)
end

Then(/^I see "([^"]*)"$/) do |text|
  expect(page).to have_content(text)
end
