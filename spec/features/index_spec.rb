feature "index" do
  scenario "player can see name entry and submit button" do
    visit("/")
    expect(page).to have_field(name: "player_name")
    expect(page).to have_button(name: "submit")
  end
end
