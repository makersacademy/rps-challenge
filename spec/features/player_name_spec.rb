feature 'expect player name to be saved' do
  scenario 'player name displayed on page' do
    single_player_game
    expect(page).to have_content("John: 0")
  end
end
