feature 'Enter names', :type => :feature do
  scenario 'one player' do
    mode_one_player_classic
    expect(page).to have_content "Sergio"
  end

  scenario 'multiplayer' do
    mode_two_players_classic
    expect(page).to_not have_content 'Computer'
    expect(page).to have_content "Sergio"
    expect(page).to have_content "Paco"
  end
end