require 'spec_helper' #spec helper should have all configuration for Capybara testing

feature "Starting the game" do

  scenario 'Player is welcomed on the homepage' do
    visit '/'
    expect(page).to have_content 'Hello and welcome to Rock, Paper, Scissors online!'
  end


  scenario 'Player enters a username' do
    visit '/'
    click_link 'Enter'
    expect(page).to have_content "Please enter a Username."
  end

  scenario 'Player can begin the game with username' do
    visit '/start_game'
    fill_in('name', with: 'Username')
    click_button('Start Game')
  end


end