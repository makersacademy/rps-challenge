def in_browser name
  old_session = Capybara.session_name
  Capybara.session_name = name
  yield
  Capybara.session_name = old_session
end


Given(/^I am on the homepage$/) do
  visit "/"
end

When(/^I click "([^"]*)"$/) do |arg1|
  click_link arg1
end

When(/^I enter "([^"]*)" in the "([^"]*)" field$/) do |arg1, arg2|
  fill_in(arg2, :with => arg1)
end

When(/^I click the "([^"]*)" button$/) do |arg1|
  click_button arg1
end

Then(/^I should see "([^"]*)"$/) do |arg1|
  expect(page).to have_content arg1
end

Then(/^I should see "([^"]*)" it's move$/) do |arg1|
 moves = ['rock', 'paper', 'scissor']
  expect(page).to have_content arg1 
  # how to test computer move shows up?
end

Given(/^I filled out the registration page$/) do
  step 'I am on the homepage'
  step 'I click "1 player game"'
  step 'I enter "Bob" in the "name" field'
  click_button 'submit'
end

Then(/^I am redirected back to the "([^"]*)" page$/) do |arg1|
  uri = URI.parse(current_url)
  expect(uri.path).to eq arg1
end

Given(/^I am on the hompage$/) do
  visit '/'
end

Given(/^I am first on the hompage$/) do
  in_browser :firefox do
    visit '/'
  end
end

Then(/^I should not see "([^"]*)"$/) do |arg1|
in_browser :firefox do
    expect(page).not_to have_content arg1
  end
end

Given(/^A player has already started a game$/) do
  in_browser :chrome do
    step 'I am on the hompage'
    step 'I click "Start 2 player game"'
    step 'I enter "Bob" in the "name" field'
    step 'I click the "submit" button'
  end
end


Given(/^I have started a game$/) do
  in_browser :chrome do
    step 'I am on the hompage'
    step 'I click "Start 2 player game"'
    step 'I enter "Bob" in the "name" field'
    step 'I click the "submit" button'
  end 
end

Given(/^A second player has joined$/) do
  in_browser :firefox do
    step 'I am on the hompage'
    step 'A player has already started a game'
    step 'I click "Join 2 player game"'
    step 'I enter "Rich" in the "name" field'
    step 'I click the "submit" button'
    step 'I should see "Player 1: Bob, Player 2: Rich"' 
  end
end

Then(/^I should see "([^"]*)" when the page reloads$/) do |arg1|
  in_browser :chrome do
    visit 'two_players_ready'
    expect(page).to have_content arg1
  end
end

 

