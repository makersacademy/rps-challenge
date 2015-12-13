feature 'Two player turns' do
  xscenario 'player 1 goes first' do
    two_player_login
    expect(page).to have_content 'Michael\'s Turn'
  end

  xscenario 'player 2 goes second' do
    two_player_login
    choose 'Rock'
    click_button 'Change Turns!'
    expect(page).to have_content 'Lach\'s Turn'
  end
end
