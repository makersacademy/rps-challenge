feature "The result page", {type: :feature} do

  scenario "displays choices for both user and computer" do
    play_game("Rock")
    expect(page).to have_text("Your choice: Rock")
    expect(page).to have_text("Computer's choice:")
  end

  scenario "displays the winner" do
    play_game("Scissors")
    expect(page).to have_text("Nick is the winner.")
  end

  scenario "returns to play screen when play again is pushed" do
    play_game("Scissors")
    click_button("Play again")
    expect(page).to have_text("Please choose rock, paper or scissors")
  end

  scenario "returns to sign in screen when restart is pushed" do
    play_game("Scissors")
    click_button("Restart")
    expect(page).to have_text("Welcome to Rock, Paper, Scissors")
  end
end
