Given(/^I am on the homepage$/) do
  visit('/')
end

When(/^I submit a name$/) do
  fill_in('name', :with => 'Louise')
end

Then(/^I should be prompted to choose a weapon$/) do
  expect(page).to have_content('Choose your weapon')
end


Given(/^I do not submit a name$/) do
  fill_in('name', :with => '')
end

Then(/^I should be redirected to the no_name page$/) do
  visit('/no_name')
end


Given(/^I am on the no_name page$/) do
  visit('/no_name')
end

Then(/^I should be redirected to the homepage$/) do
  visit('/')
end

When /^(?:|I )press "([^\"]*)"?$/ do |button|
  click_button(button)
end