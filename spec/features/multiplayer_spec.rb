feature 'Multiplayer sign-in' do
  scenario 'Player enter their names and this is displayed on-screen' do
    enter_two_players_and_submit
    expect(page).to have_content("Welcome to Rock, Paper, Scissors Ed and Ted")
  end
end