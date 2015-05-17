When(/^I see "([^"]*)"$/) do |text|
  page.has_content?(text)
end

When(/^I type in "([^"]*)"$/) do |name|
  fill_in('name', with: name)
end

