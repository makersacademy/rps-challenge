feature "Player can choose Rock, Paper or Scissors" do
  scenario "there is a confirmation of the player's choice" do
    sign_in_and_play
    choose "paper"
    click_button "GO!"
    expect(page).to have_content "You chose paper!"
  end
end
