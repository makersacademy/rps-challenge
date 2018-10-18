feature "play page" do
  scenario "shows the player's name vs. the computer" do
    enter_name_and_play
    expect(page).to have_content "Alice vs. RPSbot"
  end

  scenario "asks the player to choose an option" do
    enter_name_and_play
    expect(page).to have_content "Alice, choose your weapon..."
  end
end
