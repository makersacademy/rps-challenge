feature 'After choosing, user can play again' do
  scenario 'signs in, plays a game and same player wants to play again' do
    player_1_sign_in_and_play
    click_button 'Rock'
    click_button 'Play again'
    expect(page).to have_content 'Yasmin what is your choice?'
  end

  scenario 'signs in, plays a game and new player wants to play' do
    player_1_sign_in_and_play
    click_button 'Rock'
    click_button 'New player'
    expect(page).to have_content 'Welcome to Rock, Paper, Scissors'
  end
end
