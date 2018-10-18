feature "play page" do
  scenario "shows the player's name vs. the computer" do
    enter_name_and_play
    expect(page).to have_content "John vs. RPSbot"
  end

  scenario "asks the player to choose an option" do
    enter_name_and_play
    expect(page).to have_content "John, choose your weapon..."
  end
end
