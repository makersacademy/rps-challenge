require_relative '../spec_helper'

feature 'playing a game' do

  before do
    sign_in_and_play
  end

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

# As a marketeer
 # So I can play a game
 # I want to see the weapons I can play with
 scenario 'see the weapon options' do
   expect(page).to have_button 'Rock'
   expect(page).to have_button 'Paper'
   expect(page).to have_button 'Scissors'
 end

 # As a marketeer
 # So I can play a game
 # I want the game to choose an weapon option

 # As a marketeer
 # So I can play a game
 # I want the game to choose a weapon option randomly

 # As a marketeer
# So I can play a game
# I want to see a winner
end
