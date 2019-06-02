feature '2 player game screen' do
  scenario 'it has a form to enter two player names' do
    two_player_game
    expect(page).to have_field('Enter your name, Player 1', type: 'text')
    expect(page).to have_field('Enter your name, Player 2', type: 'text')
  end
  
  scenario 'there is a button to begin the game' do
    two_player_game
    expect(page).to have_button('Start the game')
  end

  scenario 'clicking button takes you to player 1 game page' do
    two_player_game
    click_button('Start the game')
    expect(page).to have_content("Choose your weapon")
  end
end
