#Scenario Getting to the registration form

  Given(/^I am on the homepage$/) do
    visit ('/')
  end

  When(/^I follow "(.*?)"$/) do |register|
    click_on('New Game')
  end

  Then(/^I should see "(.*?)"$/) do |form|
    expect(page).to have_content("What's your name?")
  end


#Scenario Registration process

  Given(/^I am on the register page$/) do
    visit ('/register')
  end

  When(/^I type in my name$/) do
    fill_in('name', :with => 'Joe')
    click_on('Submit')
    expect(page).not_to have_content("Please choose your mass destruction weapon")
    expect(page).to have_content("Please enter your name")
    # Trying to make the test pass with a stub or various expressions but to no avail yet
  end

  Then(/^I should be successfully registered$/) do
    visit ('/choose')
  end


#Scenario Choose a weapon

  Given(/^I am on the game page$/) do
  visit ('/choose')
end

When(/^I select an option and submit$/) do
  select('submit', :from => 'choice')
end

Then(/^I should see the title "(.*?)"$/) do |choice|
  expect(page).to have_content("You chose")
end

#Scenario Results

Given(/^I am on the result page$/) do
  visit ('/result')
end

Then(/^I should see a mention "(.*?)"$/) do |opponent|
  expect(page).to have_content("Your opponent has chosen")
end









