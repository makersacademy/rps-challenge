feature "Weapons page spec" do
  scenario "Player can select their weapon" do
    visit('/')
    fill_in("player_name", with: "Jordan")
    click_button "Play!"
    click_button "Im Ready"
    expect(page).to have_content "Jordan... Select your weapon"
  end
end