feature "Sign in" do
  scenario "single player" do
    sign_in_and_play
    expect(page).to have_content "Player 1: Robert"
  end

  scenario "multiplayer" do
    sign_in_multiplayer
    expect(page).to have_content "Player 2: Thor"
  end

  scenario "select optional rules" do
    visit "/"
    fill_in :player1, with: "Robert"
    check("rules")
    click_button("Play")
    expect(page).to have_content "Rock Paper Scissors Spock Lizard"
  end

end
