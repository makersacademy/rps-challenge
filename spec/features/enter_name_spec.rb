feature "Enter name" do
  scenario "User enters their name to start game" do
    visit("/")
    fill_in "player_name", with: "Melvin"
    click_button "Play"
    expect(page).to have_content "Melvin"
  end
end
