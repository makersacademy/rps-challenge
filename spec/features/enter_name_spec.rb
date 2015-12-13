feature 'Entering names' do
  scenario 'Allows one player to enter their name and displays it' do
    sign_in_and_play
    expect(page).to have_content 'Marketeer vs. Computer'
  end

  scenario 'Allows 2 players to enter their names and displays both' do
    sign_in_and_play_2_players
    expect(page).to have_content 'Marketeer vs. Ruby'
  end
end
