feature "The player can register their name" do
  scenario "Before playing, the player can register their name" do
    visit("/")
    fill_in "player", with: "Serena"
    click_button("Submit")
    expect(page).to have_content("Welcome Serena, please select an option:")
  end
end