feature "name registration" do
  scenario "user registers name and name is displayed" do
    visit('/')
    fill_in :name, with: "Win"
    click_button "Go!"
    expect(page).to have_content("Win")
  end
end
