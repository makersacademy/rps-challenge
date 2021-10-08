feature "Enter name" do
  scenario "user registers their name" do
    visit('/')
    fill_in :player_name, with: "Kostas"
    click_button "OK"
  end
end