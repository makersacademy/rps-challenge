feature "Enter name" do
  scenario "user can enter and view their name" do
    visit '/'
    fill_in "player_name", with: "Richard"
    click_button "Start"
    expect(page).to have_content "Welcome Richard!"
  end
end
