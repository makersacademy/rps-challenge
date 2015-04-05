Given (/^I'm on the gamepage$/) do
  visit '/game'
end

When (/^I follow "(.*?)"$/) do |button|
  click_on(button)
end

Then (/^I should see the outcome page$/) do
	visit '/outcome'
end