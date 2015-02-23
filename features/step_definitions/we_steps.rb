Given(/^I am on the '\/' page$/) do
  visit '/'
end

When(/^I fill in 'name'$/) do
  fill_in('player_name', :with => 'Guido')
end

When(/^i click 'submit'$/) do
  click_on('submit')
end

Then(/^I should see hello "(.*?)"$/) do |arg1|
  page.has_content?('foo')
end

Given(/^I am on the '\/new_player' page$/) do
  visit '/new_player'
end

When(/^I fill in 'choice'$/) do
end

