feature '1 player game screen' do
  scenario 'it has a form to enter your player name' do
    one_player_game
    expect(page).to have_field('Enter your name', type: 'text')
  end
  
  scenario 'there is a button to begin the game' do
    one_player_game
    expect(page).to have_button('Start the game')
  end

  scenario 'clicking button takes you to game page' do
    one_player_game
    click_button('Start the game')
    expect(page).to have_content("Choose your weapon")
  end
end
