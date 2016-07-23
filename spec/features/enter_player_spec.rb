feature "Enter player name" do
  scenario "Human player enters their name" do
    register_and_play
    expect(page).to have_text("Ghengis")
  end
end
