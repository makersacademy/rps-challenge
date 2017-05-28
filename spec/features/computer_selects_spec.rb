feature "computer selection" do
  scenario "computer selects randomly" do
    sign_in_and_play
    choose("player_selection", id: "rock")
    click_button ("Submit")
    expect(page).to have_content("Computer selects Scissors")
  end
end
