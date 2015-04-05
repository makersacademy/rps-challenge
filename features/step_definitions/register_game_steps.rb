When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |arg1, arg2|
	fill_in('name', with => 'Kanishk')
end



Then (/^I should see Hey, Kanishk! Welcome to the Rock Paper Scissors game!\?$/) do
  body.should match "Hey, Kanishk! Welcome to the Rock Paper Scissors game!"
end