Given(/^I am on the homepage "([^"]*)"$/) do |link|
  visit(link)
end

When(/^I click "([^"]*)"$/) do |arg1|
  click_link(arg1)
end

Then(/^I should see "([^"]*)"$/) do |text|
  expect(page).to have_content text
end

When(/^I enter "([^"]*)"$/) do |name|
  fill_in("value", :with => name)
end

When(/^I hit "([^"]*)"$/) do |submit|
  click_button(submit)
end

Then(/^I see "([^"]*)" and "([^"]*)"$/) do |text, start|
  expect(page).to have_content text
  expect(find_link(start).visible?).to be true
end

Given(/^I have submitted "([^"]*)" as my name$/) do|name|
  visit("game/new")
  fill_in("value", :with => name)
  click_button("Submit")
end

When(/^I select "([^"]*)"$/) do |move|
  select(move, :from => "move")
end

Then(/^I should see a result$/) do

end

Given(/^I choose "([^"]*)"$/) do |move|
  visit("game/new")
  fill_in("value", :with => "name")
  click_button("Submit")
  click_link("Play Game")
  select(move, :from => "move")
end

Then(/^I Should see "([^"]*)" and "([^"]*)"$/) do |arg1, arg2|

end





