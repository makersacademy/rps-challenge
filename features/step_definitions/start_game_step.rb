Given(/^I'm on the homepage$/) do
  visit '/'
end

When(/^I follow "(.*?)"$/) do |button|
  click_on(button)
end

Then(/^I should see "(.*?)"$/) do |name|
  should match(/#{name}/m)
end