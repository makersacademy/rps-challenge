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

  scenario "can return to sign-in" do
    sign_in_and_play
    click_button("Rock")
    click_button("Return to Sign-in")
    expect(page).to have_content "Sign in to play"
  end

end
