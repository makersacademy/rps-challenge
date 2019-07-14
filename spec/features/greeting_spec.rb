require 'capybara/rspec'

feature 'Opening page' do
  scenario 'The opening page asks the user to enter their name and weapon choice' do
    visit ('/')
    expect(page).to have_content "Welcome, Gladiator. Enter your name and choose your weapon"
  end
end

feature 'The battle page' do
  scenario 'Go into battle after choosing weapon' do
    visit('/')
    click_button 'Battle'
    expect(page).to have_content 'Scores on the doors'
  end
end
