Given (/^I'm on the home page$/) do
  visit '/'
end

When (/^I follow "(.*?)"$/) do |button|
  click_on(button)
end

Then (/^I should see Please enter your name to begin the game:\?$/) do
  body.should match "Please enter your name to begin the game:"
end