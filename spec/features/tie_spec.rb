feature "A tie", type: :feature do
  scenario "directs to tie page" do
    play_game("Paper")
    expect(page).to have_text("It's a tie. Play again")
  end

  scenario "allows user to replay a game" do
    play_game("Paper")
    click_button("Play again")
    expect(page).to have_text("Please choose rock, paper or scissors")
  end
end
