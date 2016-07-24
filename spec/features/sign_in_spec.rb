feature "Sign in" do
  scenario "the user name appears" do
    sign_in_and_play
    expect(page).to have_content "Player 1: Robert"
  end
end
