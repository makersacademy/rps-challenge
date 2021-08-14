feature 'start_game' do
  scenario 'player fills in their name and see their name on the game screen' do
    start_game
    expect(page).to have_content 'Player 1: Jack'
  end
end
