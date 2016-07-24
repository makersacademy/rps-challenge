feature "Sign in" do
  scenario "single player" do
    sign_in_and_play
    expect(page).to have_content "Player 1: Robert"
  end

  scenario "multiplayer" do
    sign_in_multiplayer
    expect(page).to have_content "Player 2: Thor"
  end

  # scenario "select optional rules" do
  #   sign_in_and_play
  #   choose "hard-mode"
  #   expect(page).to have_content "Rock, Paper, Scisors, Spock, Lizard"
  # end

end
