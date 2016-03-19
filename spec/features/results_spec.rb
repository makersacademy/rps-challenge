require 'spec_helper'

feature '/results' do

  scenario 'player: Rock, player2: Scissors, player wins' do
    sign_in
    click_button('Rock')
    click_button('Scissors')
    expect(page).to have_content('Charlie wins') 
  end

  scenario 'player: Paper, player2: Scissors, player2 wins' do
    sign_in
    click_button('Paper')
    click_button('Scissors')
    expect(page).to have_content('Roxanne wins')
  end

  scenario 'player: Scissors, player2 Scissors, its a tie' do
    sign_in
    click_button('Scissors')
    click_button('Scissors')
    expect(page).to have_content('The game was a tie')
  end
end
