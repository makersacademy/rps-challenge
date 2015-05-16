Given(/^I'm on the homepage$/) do
  visit '/'
end

When(/^I follow "(.*?)"$/) do |button|
  click_on(button)
end

Then(/^I should see What's your name\?$/) do
  body.should match "What's your name?"
end