feature "abc" do
  scenario "Displays the users name" do
    visit('/')
    fill_in :player_1, with: "Jim"
    click_button "Submit"
    expect(page).to have_content("Jim vs RPSbot")
  end
end
