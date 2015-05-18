Given(/^I am on the homepage$/) do
  visit('/')
end

When(/^I submit a name$/) do
  fill_in('name', :with => 'Tomi')
end

Then(/^I should be asked to choose a weapon$/) do
  expect(page).to have_content('Choose your weapon')
end


When /^(?:|I )press "([^\"]*)"?$/ do |button|
  click_button(button)
end
