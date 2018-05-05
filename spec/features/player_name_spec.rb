feature 'expect player name to be saved' do
  scenario 'player name displayed on page' do
    single_player_game
    expect(page).to have_content("John: 0")
  end
  scenario 'player name displayed on results page' do
    single_player_game
    click_link('paper')
    visit('/result')
    expect(page).to have_content("John")
  end
end
