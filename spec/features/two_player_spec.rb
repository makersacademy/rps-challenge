feature '2 player game screen' do
  scenario 'it has a form to enter two player names' do
    two_player_game
    expect(page).to have_field('Enter the names of Player 1', type: 'text')
    expect(page).to have_field('and Player 2', type: 'text')
  end
  
  scenario 'there is a button to begin the game' do
    two_player_game
    expect(page).to have_button('Start the game')
  end

  scenario 'clicking button takes you to two player game page' do
    start_two_player_game
    expect(page).to have_content("Choose your weapon")
  end
end
