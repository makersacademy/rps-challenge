feature "Name registration" do
  scenario "Before playing, the player can register their name" do
    register_and_play
    expect(page).to have_content("Welcome Serena, please select an option:")
  end
end
