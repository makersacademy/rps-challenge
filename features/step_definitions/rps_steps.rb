Given(/^I fill in my name as "([^"]*)"$/) do |name|
  fill_in :name, with: name
end

When(/^I click submit$/) do
  click_button 'Submit'
end