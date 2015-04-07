require 'cucumber/rspec/doubles'

Given(/^a player is on the "([^"]*)" page$/) do |page|
  visit "#{page}"
end

When(/^they fill in "([^"]*)" as the "([^"]*)"$/) do |name, field|
  fill_in(field, with: name)
end

When(/^they press the "([^"]*)" button$/) do |button|
  click_button(button)
end

Then(/^they see "([^"]*)"$/) do |phrase|
  expect(page).to have_content(phrase)
end

Then(/^they see AI chose "([^"]*)"$/) do |action|
  allow_any_instance_of(Player).to receive(:auto_select_action)
    .and_return(action)
end

Then(/^they see 'Congratulations: you won!'$/) do
  allow_any_instance_of(Round).to receive(:winner).and_return('Mark')
end

Then(/^they see 'Well done, I guess: you drew!'$/) do
  allow_any_instance_of(Round).to receive(:winner).and_return('AI')
end

Then(/^they see 'Commiserations: you lost!'$/) do
  allow_any_instance_of(Round).to receive(:winner).and_return(nil)
end
