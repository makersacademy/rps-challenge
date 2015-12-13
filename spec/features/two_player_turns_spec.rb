feature 'Two player turns' do
  scenario 'player 1 goes first' do
    two_player_login
    expect(page).to have_content 'Michael\'s Turn'
  end

  scenario 'player 2 goes second' do
    two_player_login
    choose 'rock'
    click_button 'Change Turns!'
    expect(page).to have_content 'Lach\'s Turn'
  end
end
