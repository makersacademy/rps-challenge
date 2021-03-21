require 'spec_helper'

feature 'a player can see the results' do
  scenario 'a player plays a move' do
    makes_a_move
    expect(page).to have_content('Results')
  end 
end

feature 'player sees confirmation of their move' do
  scenario 'a player sees they played Rock' do
    makes_a_move
    expect(page).to have_content("Boo Radley played Rock")
  end 
end 

feature 'a player can play again' do
  scenario 'a player wants to play again' do
    makes_a_move
    expect(page).to have_selector(:link_or_button, "Play again!")
  end 
end 
