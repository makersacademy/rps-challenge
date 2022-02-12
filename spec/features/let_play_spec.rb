feature "we see the start of the game" do
  scenario "player enters their name and sees it printed with the game ready to play" do
    sign_in_and_play
    expect(page).to have_content "Okay Eddie... Make your move"
    expect(page).to have_button("ROCK")
    expect(page).to have_button("PAPER")
    expect(page).to have_button("SCISSORS")
    expect(page).to have_content "Computer"
  end
end
