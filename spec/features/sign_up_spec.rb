feature "sign up" do
  scenario "user can register before playing" do
    visit("/")
    fill_in("player_1_name", with: "Arnold")
    click_button ("Submit")
    expect(page).to have_content("Welcome, Arnold!")
  end
end
