Given(/^I am on the homepage$/) do
  visit('/')
end

And(/^I fill the "(.*?)" form$/) do |arg1|
  fill_in('name', :with => 'John117')
end

And(/^I press the "(.*?)" button$/) do |arg1|
  click_on('submit')  
end

When(/^I visit the "(.*?)" page$/) do |arg1|
  visit('/player')
end

Then(/^I should receive a "(.*?)" with my chosen name$/) do |arg1|
  page.has_content('Welcome John117')
end

Given(/^I am on the homepage after choosing a name$/) do
  visit('/game')
end

And(/^I click on the "(.*?)" link/) do |arg1|
  click_on('Play')
end

When(/^I select the "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I should receive a "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end