feature "Displaying choice" do
  scenario "display choice" do
    sign_in_and_play
    fill_in :choice, with: "rock"
    click_button "Enter"
    expect(page).to have_content "Stacy has chosen rock."
  end
end