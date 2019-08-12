feature "Enter name" do
  scenario "submits name" do
    visit ("/")
    fill_in :player_name, with: "Ben"
    click_button "Submit"
    expect(page).to have_content "Name: Ben"
  end
end
