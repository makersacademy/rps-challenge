feature "register a new user" do
  scenario "visiting the homepage" do
    visit '/'
    fill_in "name", with: "Player1"
    click_button("Submit")
    expect(page).to have_content("Player1 are you ready for a match?")
  end
end
