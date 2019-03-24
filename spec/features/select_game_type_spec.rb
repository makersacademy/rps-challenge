feature 'Game has 2 different play options' do
  
  scenario 'user can select normal game' do
    register_2_players_and_start_game
    expect(page).to have_content 'Game type normal'
    expect(page).not_to have_button 'spock'
    expect(page).not_to have_button 'lizzard'
  end

  scenario 'user can select spock game' do
    register_2_players_and_start_spock_game
    expect(page).to have_content 'Game type spock'
    expect(page).to have_button 'spock'
    expect(page).to have_button 'lizard'
  end

end
