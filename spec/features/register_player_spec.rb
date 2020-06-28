feature "register a new user" do
  scenario "visiting the homepage" do
    register_to_play
    expect(page).to have_content("Player1 are you ready for a match?")
  end
end
