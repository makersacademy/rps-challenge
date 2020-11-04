feature "Displaying player's choice" do
  scenario "display player's choice" do
    sign_in_and_play
    fill_in :choice, with: "rock"
    click_button "Enter"
    expect(page).to have_content "Stacy has chosen rock."
  end
end