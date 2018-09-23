feature 'user can play another game' do
  scenario 'user completes a game and then starts again' do
    two_players_signin
    rps_mode
    click_button("rock")
    click_button("paper")
    click_link("start again")
    expect(page).to have_content("Rock Paper Scissors (Lizard/Spock)")
  end
end