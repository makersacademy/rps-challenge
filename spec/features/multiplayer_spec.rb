feature 'Multiplayer' do
  scenario '2 players can enter names' do
    sign_in_multi
    click_button 'rock'
    expect(page).to have_content('Joj, make your choice!')
  end

  scenario 'Player 1 beats Player 2' do
    multi_player1_win
    expect(page).to have_content('Adil won!')
  end

  scenario 'Player 2 beats Player 1' do
    multi_player2_win
    expect(page).to have_content('Joj won!')
  end

  scenario 'Players pick the same weapon' do
    multi_tie
    expect(page).to have_content("It's a tie!")
  end
end
