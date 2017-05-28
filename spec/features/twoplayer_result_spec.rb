feature 'infrastructure of 2 player result page is set up properly' do
  scenario 'players are taken to results page after choosing weapon' do
    two_player_sign_in_and_play
    expect(page).to have_content 'Kavita chose'
  end

  scenario 'player 1 can see their choice on results page' do
    two_player_sign_in_and_play
    expect(page).to have_content 'Kavita chose Rock.'
  end

  scenario 'player 2 can see their choice on results page' do
    two_player_sign_in_and_play
    expect(page).to have_content 'Vanita chose Paper.'
  end
end

feature 'outcome of 2 player game is displayed correctly' do
  scenario 'player 2 wins - player 1 puts Rock and player 2 puts Paper' do
    two_player_sign_in_and_play
    expect(page).to have_content 'Vanita won.'
  end
end
