Given(/^I am on the name page$/) do
  visit '/player'
end

When(/^I enter "(.*?)"$/) do |name| # rubocop: disable all
  fill_in('name', with: 'Sammy')
end
Then(/^I should see the game$/) do
  visit '/game'
end