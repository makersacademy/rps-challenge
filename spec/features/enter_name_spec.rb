feature "Enter a name when starting the game" do
  scenario "Player starting the game is able to enter a name" do
    visit "/"
    fill_in "charname", with: "Henry"
    click_button "Begin the RAMPAGE"
    expect(page).to have_text "The end is nigh"
  end
end
