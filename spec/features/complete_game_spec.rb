feature 'finish a game and declare a winner' do
  scenario 'user plays rpsls and wins' do
    two_players_signin
    rpsls_mode
    click_button("scissors")
    click_button("lizard")
    expect(page).to have_content("John is the winner")
  end
  scenario 'user plays rps and wins' do
    two_players_signin
    rpsls_mode
    click_button("scissors")
    click_button("paper")
    expect(page).to have_content("John is the winner")
  end
end