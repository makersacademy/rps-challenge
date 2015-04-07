Given(/^a user is on the "([^"]*)" page$/) do |page|
  visit "#{page}"
end

When(/^they fill in "([^"]*)" as the "([^"]*)"$/) do |name, field|
  fill_in(field, with: name)
end

When(/^they press the "([^"]*)" button$/) do |button|
  click_button(button)
end

Then(/^they see "([^"]*)"$/) do |phrase|
  expect(page).to have_content(phrase)
end
