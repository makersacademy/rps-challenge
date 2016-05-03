feature 'Player 1 choice confirmed', type: :feature do
  scenario 'multiplayer' do
    mode_two_players_classic
    click_button("rock")
    expect(page).to have_content 'Your Choice has been recorded'
  end
end