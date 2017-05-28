feature "display selection" do
  scenario "when the user selects rock, selection should be displayed on next page" do
    sign_in_and_play
    choose("player_selection", id: "rock")
    click_button "Submit"
    expect(page).to have_content("Arnold selects Rock")
  end
end
