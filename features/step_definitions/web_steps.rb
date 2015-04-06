Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^i follow "([^"]*)"$/) do |link|
  click_link link
end

Then(/^I should see "([^"]*)"$/) do |text|
  expect(page).to have_content(text)
end

When(/^I type "([^"]*)"$/) do |name|
  fill_in('name', :with => name)  
end

When(/^I click on "([^"]*)"$/) do |button|
  click_button button  
end

Given(/^I have registered$/) do
  %{
    Given I am on the homepage
    And I follow "New Game"
    And I type "Sammy"
    And I click on "Submit"
  }
end

When(/^I follow "([^"]*)"$/) do |play|
click_button play
end