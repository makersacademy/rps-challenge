Given(/^I am on the homepage$/) do
  visit '/'
end

Given(/^I start a one player game$/) do
  click_link('One player')  
end

Given(/^I enter my name "(.*?)"$/) do |arg1|
  fill_in('name', :with => arg1)
end

Then(/^I should see "(.*?)"$/) do |arg1|
  page.has_content?(arg1)
end


