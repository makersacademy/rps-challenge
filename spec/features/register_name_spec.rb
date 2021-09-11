feature "Enter name" do
  scenario "register name" do
    visit('/')
    fill_in :player_name, with: "Gianluca"
    click_button "Register"
    expect(page).to have_content "Gianluca vs. Champion"
  end
end