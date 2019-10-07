feature "Enter player's name" do
  scenario "Player registers name before playing game" do
    register_name_and_play
    expect(page).to have_content("Welcome to the game Tolu")
  end
end
