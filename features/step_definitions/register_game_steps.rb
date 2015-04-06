Given (/^I'm on the register page$/) do
  visit '/register'
end

When(/^I enter "(.*?)"$/) do |name|
	fill_in('name', :with => 'Kanishk')
end

And (/^I follow "(.*?)"$/) do |button|
  click_on(button)
end

Then (/^I should see the game page$/) do
	visit '/game'
end
