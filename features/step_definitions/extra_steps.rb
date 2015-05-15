Given(/^I choose radio button "([^"]*)"$/) do |choice|
  page.choose(choice)
end