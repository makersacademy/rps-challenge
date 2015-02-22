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