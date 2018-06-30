feature "The player can register their name" do
  scenario "Before playing, the player can register their name" do
    visit("/")
    fill_in "player_name", with: "Yvonne"
    click_button('Submit')
    expect(page).to have_content "Welcome Yvonne, please select an option:"
  end
end
