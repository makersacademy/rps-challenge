feature 'two players can enter their names' do
  scenario 'both players enter their names' do
    two_player_sign_in
    expect(page).to have_content('Player 1: Dec')
    expect(page).to have_content('Player 2: Dan')
  end
end
