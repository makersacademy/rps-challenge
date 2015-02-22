Given(/^I am on the homepage$/) do
  visit('/')
end

When(/^I submit a name$/) do
  fill_in('Description', :with => 'Name')
end

Then(/^I should be prompted to choose a weapon$/) do
  page.has_content?('Choose your weapon.')
end


Given(/^I do not submit a name$/) do
  fill_in('Description', :with => '')
end

When(/^I click the Start Game button$/) do
  click_button('Start Game')
end

Then(/^I should be redirected to the no_name page$/) do
  visit('/no_name')
end


Given(/^I am on the no_name page$/) do
  visit('/no_name')
end

When(/^I press the 'Go Back' button$/) do
  click_button('Go Back')
end

Then(/^I should be redirected to the homepage$/) do
  visit('/')
end
