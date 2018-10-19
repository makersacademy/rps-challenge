# user can draw
feature "Draw game" do
  scenario "User can draw game" do
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content("You draw")
  end
end
