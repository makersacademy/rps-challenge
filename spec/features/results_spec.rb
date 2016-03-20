require 'spec_helper'

feature '/results' do

  before do
    sign_in
  end

  scenario 'player1: Rock, player2: Scissors, player1 wins' do
    click_button('Rock')
    click_button('Scissors')
    expect(page).to have_content('Charlie wins') 
  end

  scenario 'player1: Paper, player2: Scissors, player2 wins' do
    click_button('Paper')
    click_button('Scissors')
    expect(page).to have_content('Roxanne wins')
  end

  scenario 'player1: Scissors, player2 Scissors, its a tie' do
    click_button('Scissors')
    click_button('Scissors')
    expect(page).to have_content('The game was a tie')
  end

  scenario 'player1: Spock, player2: Lizard, player2 wins' do
    click_button('Spock')
    click_button('Lizard')
    expect(page).to have_content('Roxanne wins')
  end

end
