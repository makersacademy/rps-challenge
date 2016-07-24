feature "Register" do
  scenario "saves the name of a player" do
    register_and_play
    expect(page).to have_content("Player: Karol")
  end
end
