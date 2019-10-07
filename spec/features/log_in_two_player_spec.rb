feature 'Two player log in page' do
  scenario 'It will allow two players to log in' do
    play_two_player
    fill_in :player_1_name, with: 'Player 1'
    fill_in :player_2_name, with: 'Player 2'
    click_button 'Submit'
    expect(page).to have_content 'Player 1 vs. Player 2!'
  end
end
