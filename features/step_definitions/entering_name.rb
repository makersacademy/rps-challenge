Given(/^I am on the enter name page$/) do
    visit('./enter_name')
  end

When(/^I enter my "(.*?)"$/) do |arg1|
    fill_in('name', :with => 'Paul')
  end

Then(/^I should go to the "(.*?)" page$/) do |arg1|
    visit('new_game')
  end
