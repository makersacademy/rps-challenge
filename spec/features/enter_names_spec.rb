feature 'Enter names', :type => :feature do
  scenario 'one player' do
    mode_one_player
    expect(page).to have_content "Sergio"
  end

  scenario 'multiplayer' do
    mode_two_players
    expect(page).to_not have_content 'Computer'
    expect(page).to have_content "Sergio"
    expect(page).to have_content "Paco"
  end
end