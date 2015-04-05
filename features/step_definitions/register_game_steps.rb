Given (/^I'm on the register page$/) do
  visit '/register'
end

When(/^I enter "(.*?)"$/) do |name|
	fill_in('name', :with => 'Kanishk')
end

And (/^I press "(.*?)"$/) do |button|
  click_on(button)
end

Then (/^I should see Hey, Kanishk! Welcome to the Rock Paper Scissors game!\?$/) do
  body.should match "Hey, Kanishk! Welcome to the Rock Paper Scissors game!"
end
