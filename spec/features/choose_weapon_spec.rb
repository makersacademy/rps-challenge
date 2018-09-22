feature 'choose weapon' do
  scenario 'in 1p mode user chooses rock as their weapon' do
    one_player_signin
    rps_mode
    click_button("rock")
    expect(page).to have_content('John chose rock')
  end
  scenario 'in 2p mode users choose rock and paper as their weapon' do
    two_players_signin
    rps_mode
    click_button('rock')
    click_button('paper')
    expect(page).to have_content('John chose rock')
    expect(page).to have_content('Dave chose paper')
  end  
end