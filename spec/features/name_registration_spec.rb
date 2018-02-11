feature "Name registration" do
  scenario "Before playing, the player can register their name" do
    register_and_play
    expect(page).to have_content("Welcome Serena\n Please select an option")
  end
end
