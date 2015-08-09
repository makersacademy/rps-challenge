Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^I click "([^"]*)"$/) do |arg1|
  click_link arg1
end

Then(/^I should see "([^"]*)"$/) do |arg1|
  expect(page).to have_content arg1
end

When(/^I enter "([^"]*)" in "([^"]*)"$/) do |arg1, arg2|
  fill_in arg2, with: arg1
end

When(/^I click button "([^"]*)"$/) do |arg1|
  click_button arg1
end

When(/^I select "([^"]*)" as "([^"]*)"$/) do |arg1, arg2|
  choose arg2, option: arg1
end

When(/^I select "([^"]*)" in "([^"]*)"$/) do |arg1, arg2|
  select(arg1, from: arg2)
end

Given(/^I join the game$/) do
  in_browser(:chrome) do
    visit '/'
    click_link 'New Game'
    fill_in 'first_name', with: 'Sarah'
    select "Two Player", from: "game_type"
    click_on 'Submit'
  end
end

Given(/^Someone else joins the game$/) do
  in_browser(:safari) do
    visit '/'
    click_link 'New Game'
    fill_in 'first_name', with: 'Julian'
    select "Two Player", from: "game_type"
    click_on 'Submit'
  end
end

Then(/^we should see different things :\)$/) do
  in_browser(:chrome) do
    expect(page).to have_content 'Sarah'
  end

  in_browser(:safari) do
    expect(page).to have_content 'Julian'
  end
end

Given(/^they select "([^"]*)" as "([^"]*)"$/) do |arg1, arg2|
  select arg1, from: arg2
end

Then(/^we should see the result$/) do
  in_browser(:chrome) do
    expect(page).to have_content 'Julian is the winner!'
  end

  in_browser(:safari) do
    expect(page).to have_content 'Sarah chose rock.'
  end
end

# Given(/^I play the game$/) do
#   in_browser(:chrome) do
#     visit '/'
#     click_link 'New Game'
#     fill_in 'first_name', with: 'Sarah'
#     select "Two Player", from: "game_type"
#     click_on 'Submit'
#     choose "gesture", option: "rock"
#     click_on "Submit"
#   end
# end

Given(/^I play the game$/) do
  in_browser(:chrome) do
    choose "gesture", option: "rock"
    click_on "Submit"
  end
end



Given(/^Someone else plays the game$/) do
  in_browser(:safari) do
    choose "gesture", option: "paper"
    click_on "Submit"
  end
end

Given(/^I click button "([^"]*)" in chrome$/) do |arg1|
  in_browser(:chrome) do
    click_on "Result"
  end
end

def in_browser(name)
  old_session           = Capybara.session_name
  Capybara.session_name = name
  yield
  Capybara.session_name = old_session
end