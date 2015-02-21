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

When(/^I press on "(.*?)" as my weapon choice$/) do |button|
  click_on(button)
end

Then(/^I will see a result$/) do
  expect(page).to have_content("draw")
end

When(/^I press "(.*?)"$/) do |button|
  click_on(button)
end

Then(/^I will be back on the homepage$/) do
  expect(page).to have_content("Welcome to Rock Paper Scissors")
end
