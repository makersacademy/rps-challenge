feature "starting game" do
  scenario "entering and submitting name" do
    create_game
    expect(page).to have_content "Let's go, Buffon"
  end
end