feature "entering a name" do
  scenario "user enters a name (single player)" do
    visit('/')
    fill_in("username", with: "Van")
    click_button("Start Game")
    expect(page).to have_content("Welcome Van!")
  end
end
