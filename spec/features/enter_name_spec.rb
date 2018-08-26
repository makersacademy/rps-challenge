feature "Enter name" do
  scenario "Submit player name" do
    visit("/")
    fill_in :player_name, with: "Alice"
    click_button "Play"
    expect(page).to have_content "Alice vs. Computer"
  end
end
