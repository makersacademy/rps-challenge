Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^I click on "(.*?)"$/) do |link|
  click_on link
end

Then(/^I should see "(.*?)"$/) do |text|
  body.should match(text)
end