Given(/^I am on the home '\/' page$/) do
  visit('/')
end

When(/^I fill_in my "(.*?)"$/) do |text|
    fill_in 'player_name', :with => 'Riz'
end


When(/^I click "(.*?)"$/) do |submit|
  click_on('submit')
end

Then(/^I should see hello "(.*?)"$/) do |arg1|
      page.has_content?('foo')
end


Given(/^I am on the 'game' page$/) do
  visit('/new_player')
end

Given(/^I am on the 'new_player' root$/) do
  visit('/new_player')
end
