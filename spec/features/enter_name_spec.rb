feature "Enter name" do
  scenario "submitting name" do
    visit('/')
    fill_in :player_name, with: "Fran"
    click_button "Submit"
    expect(page).to have_content "Time to play, Fran!"
  end
end
