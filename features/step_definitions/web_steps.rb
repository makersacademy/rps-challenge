def in_browser name
  p Capybara.session_name
  old_session = Capybara.session_name
  Capybara.session_name = name
  p Capybara.session_name
  yield
  Capybara.session_name = old_session
  p Capybara.session_name
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

Given(/^A player has already started a game$/) do
  in_browser :chrome do
    step 'I am on the hompage'
    step 'I click "Start 2 player game"'
    step 'I enter "Bob" in the "name" field'
    step 'I click the "submit" button'
  end
end

in_browser :firefox do
  Given(/^I am first on the hompage$/) do
      visit '/'
  end

  Then(/^I should not see "([^"]*)"$/) do |arg1|
      expect(page).not_to have_content arg1
  end

end