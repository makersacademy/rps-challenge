feature 'One player log in page' do
  scenario 'It will allow one player to log in' do
    play_one_player
    fill_in :name, with: 'Player 1'
    click_button 'Submit'
    expect(page).to have_content 'Player 1 vs. Computer!'
  end
end
