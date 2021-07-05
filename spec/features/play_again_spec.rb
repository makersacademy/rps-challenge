feature "Once the game is over" do
  scenario "you can choose to play again" do
    sign_in_and_play
    choose "paper"
    click_button "GO!"
    click_button "Play again"
    expect(page).to have_content "Smash it Hannah!"
  end
end
