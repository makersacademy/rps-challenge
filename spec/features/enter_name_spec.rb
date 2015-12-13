# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
feature 'Entering names' do
  scenario 'Allows one player to enter their name and displays it' do
    sign_in_and_play
    expect(page).to have_content 'Marketeer vs. Computer'
  end

  scenario 'Allows 2 players to enter their names and displays both' do
    sign_in_and_play_2_players
    expect(page).to have_content 'Marketeer vs. Katie'
  end
end
