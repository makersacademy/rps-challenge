Given (/^I'm on the game page$/) do
  visit '/game'
end

Then (/^I should see Hey, Kanishk! Welcome to the Rock Paper Scissors game! Pick your strategy!\?$/) do
  body.should match "Hey, Kanishk! Welcome to the Rock Paper Scissors game! Pick your strategy!"
end

When (/^I follow "(.*?)"$/) do |button|
  click_on(button)
end

Then (/^I should see the outcome page$/) do
	visit '/outcome'
end