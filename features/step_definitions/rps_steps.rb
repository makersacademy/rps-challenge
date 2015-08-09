Given(/^I am on the homepage$/) do
	visit '/'
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |arg1, arg2|
  fill_in(arg1, with: arg2)
end

When(/^I press "([^"]*)"$/) do |arg1|
  click_button(arg1)
end

Then(/^I should see "([^"]*)"$/) do |arg1|
  expect(page).to have_content(arg1)
end

