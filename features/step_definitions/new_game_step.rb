Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^I follow "(.*?)"$/) do |button|
  click_on(button)
end

Then(/^i should see "(.*?)"$/) do |name|
  body.should match(/#{name}/m)
end