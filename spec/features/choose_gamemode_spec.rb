feature 'players can choose rps or rpsls' do
  scenario 'user chooses rock paper scissors lizard spock mode' do
    one_player_signin
    rpsls_mode
    expect(page).to have_selector("input[type=submit][value='spock']")
    expect(page).to have_selector("input[type=submit][value='lizard']")
  end
  scenario 'user chooses rock paper scissors mode' do
    one_player_signin
    rps_mode
    expect(page).not_to have_selector("input[type=submit][value='spock']")
    expect(page).not_to have_selector("input[type=submit][value='lizard']")                
  end
end