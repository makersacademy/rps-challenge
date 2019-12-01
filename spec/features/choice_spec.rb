feature "player can choose an option" do
  scenario "player's option should be shown on screen" do
    sign_in_and_play
    select("Rock", from: "choice")
    click_button "Submit"
    expect(page).to have_content("You chose rock")
  end
end
