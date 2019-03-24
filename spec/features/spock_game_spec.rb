feature "User chooses spock option" do

  scenario 'and game shows the type of game it is in' do
    register_2_players_and_start_spock_game
    expect(page).to have_content 'Game type spock'
  end

  scenario 'it has access to 2 new options: rock and lizard' do
    register_2_players_and_start_spock_game
    expect(page).to have_button 'spock'
    expect(page).to have_button 'lizard'
  end

  scenario 'lizzard beats spock' do
    register_2_players_and_start_spock_game
    click_button 'spock'
    click_button 'lizard'
    expect(page).to have_content("Winner: Player2")
  end

  scenario 'spock beats rock' do
    register_2_players_and_start_spock_game
    click_button 'spock'
    click_button 'rock'
    expect(page).to have_content("Winner: Player1")
  end

  scenario 'user against computer - user selects spock' do
    allow_any_instance_of(Computer).to receive(:rand).and_return(1)
    register_1_player_against_computer_spock
    click_button 'spock'
    click_link 'OK'
    expect(page).to have_content("Winner: Player1")
  end

end
