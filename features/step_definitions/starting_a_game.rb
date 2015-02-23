Given(/^I am on the homepage$/) do
  visit('/')
end

And(/^I type a "(.*?)"$/) do |name|
  fill_in("name", with: "kate")
end

When(/^I click on "(.*?)"$/) do |link|
  click_on(link)
end

Then(/^I should see "(.*?)"$/) do |arg1|
  page.should have_content("Welcome")
end

Given(/^I am on the player page$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^I don't type a "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

When(/^I click on "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end