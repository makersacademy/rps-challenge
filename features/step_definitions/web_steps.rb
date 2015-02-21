Given(/^I am on the homepage$/) do
  visit '/'
end

Given(/^I am on the "(.*?)" page$/) do |page|
  visit page
end

When(/^I follow "(.*?)"$/) do |link|
  click_link(link)
end

When(/^I enter "(.*?)" as "(.*?)"$/) do |field, text|
  fill_in(field, :with => text)
end

When(/^press the "(.*?)" button$/) do |button|
  click_on(button)
end

Then(/^I will see "(.*?)"$/) do |text|
  expect(page).to have_content(text)
end


Given(/^sign in as "(.*?)"$/) do |text|
  fill_in("player", :with => text)
  click_on("Submit")
end

When(/^I enter in "(.*?)" as my weapon choice$/) do |text|
  fill_in("weapon", :with => text)
  click_on("Submit")
end

Then(/^I will see a result$/) do
  expect(page).to have_content("The winner is:")
end


