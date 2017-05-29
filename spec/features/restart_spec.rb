feature "restarting" do

  scenario "winning message is displayed on results page" do
    sign_in_and_play
    choose("player_selection", id: "rock")
    click_button "Submit"
    click_button "Play again!"
    expect(page).to have_content("Arnold vs. Computer!")
  end
end
