feature "User's name is stored" do
  scenario "the names entered are displayed back to the user" do
    two_player_sign_in
    expect(page).to have_content "Jo Brown is playing Rock, Paper, Scissors against Mel Smith"
  end

  scenario "player 2 is The Robot by default" do
    sign_in
    expect(page).to have_content "Jo Brown is playing Rock, Paper, Scissors against The Robot"
  end
end
