Given(/^I am on the homepage$/) do
  visit ('/')
end

When(/^I follow "(.*?)"$/) do |link|
  click_link(link)
end

Then(/^I should see "(.*?)"$/) do |arg1|
  save_and_open_page
  pending # express the regexp above with the code you wish you had
end

