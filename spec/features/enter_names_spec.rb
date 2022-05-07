require 'capybara/rspec'
require_relative '../../app'

Capybara.app = RockPaperScissors

feature 'allows player to enter their name' do
  scenario 'player is able to enter their name' do
    visit('/')
    expect(page).to have_field('player_name')
    expect(page).to have_button('Submit name')
  end

  scenario 'player is taken to a new page to start the game' do
    sign_in_and_play
    expect(current_path).to eq('/name')
  end

  scenario 'player can see their name on the play page' do
    sign_in_and_play
    expect(current_path).to eq('/name')
    expect(page).to have_content('Alien')
    #get name into params and then an instance variable, then put that instance (or global?) variable in an erb file (play.erb)(?)
  end

end
