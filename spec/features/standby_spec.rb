feature 'Standby page: while waiting for entry completion' do

  scenario 'Player 1 signs in first' do
    enter_game
    p1_sign_in
    expect(page).to have_content('Waiting for Player 2 to complete entry...')
  end

  scenario 'Player 2 signs in next' do
    enter_game
    p2_sign_in
    expect(page).to have_content('Waiting for Player 1 to complete entry...')
  end
end
