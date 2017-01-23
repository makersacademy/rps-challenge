feature "Register Name" do
  scenario "I would like to register player 1's name" do
    sign_in_two_players
    expect(page).to have_content "Player 1: Adrian"
    expect(page).to have_content "Player 2: Helen"
  end
end
