feature "Play again" do
  scenario "After completing a game, a player can play the game again" do
    register_name
    click_button("Rock")
    click_button("Play again")
    expect(page).to have_content("Welcome to Rock, Paper, Scissors")
    expect(page).to have_content("Please enter your name and hit submit")
    find_field('player')
  end
end
