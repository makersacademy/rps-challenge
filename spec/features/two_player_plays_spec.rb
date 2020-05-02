feature 'two players can play the game' do
  scenario 'player 1 picks first' do
    two_player_sign_in
    expect(page).to have_content('Dec, pick your play.')
  end
end
