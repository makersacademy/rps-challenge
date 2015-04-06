Then(/^I should see the "([^"]*)" element$/) do |arg1|
  page.has_css?(".#{arg1}")
end

When(/^I leave "([^"]*)" field empty$/) do |arg1|
  fill_in(arg1, with: "")
end

Then(/^I should see the result of the match$/) do
  expect("#result").not_to be_empty
end

When(/^I am in (.*) browser$/) do |name|
  Capybara.session_name = name
end
