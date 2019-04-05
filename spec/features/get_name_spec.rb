feature "Get the player name" do
  scenario "Submit a name and display it" do
    sign_in_and_play
    expect(page).to have_content "Welcome Jose"
  end
end
