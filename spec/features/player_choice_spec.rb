feature "Player's Choice" do
  scenario "player's choice is displayed" do
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content "Rock"
  end
end
