feature 'store names' do
  scenario 'one user can enter their name' do
    one_player_signin
    expect(page).to have_content('Welcome John & Skynet')
    expect(page).not_to have_content('Dave')
  end
  scenario 'two users can enter their names' do
    two_players_signin
    expect(page).to have_content('Welcome John & Dave')
    expect(page).not_to have_content('Skynet')
  end
end