feature 'start a new game' do
  scenario 'completed game and user presses link to start another' do
    sign_in_and_play_standard
    player_one_game
    click_link('New Game')
    expect(page).to have_content('Todd')
  end
end
