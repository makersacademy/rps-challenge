Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |player, name|
  fill_in(player, :with => name)
end

When(/^click on "(.*?)"$/) do |link|
  click_on(link)
end

Then(/^I should see "(.*?)"$/) do |text|
  expect(page).to have_content(text)
end

Given(/^I have added my name$/) do
  visit '/'
  fill_in("Name", :with => "Kev")
  click_on("Start Game!")
end

When(/^I click on "(.*?)"$/) do |image|
  click_on(image)
end
