feature "play rock papers scissors" do
  scenario "the user is prompted for a move" do
    sign_in_and_play
    expect(page).to have_content "Select one of Rock, Paper or Scissors"
  end

  context "player makes a move" do
    scenario "confirm the player has selected Rock" do
      sign_in_and_play "Rock"
      expect(page).to have_content "Jo Brown chose Rock"
    end

    scenario "confirm the player has selected Paper" do
      sign_in_and_play "Paper"
      expect(page).to have_content "Jo Brown chose Paper"
    end

    scenario "confirm the player has selected Scissors" do
      sign_in_and_play "Scissors"
      expect(page).to have_content "Jo Brown chose Scissors"
    end

    scenario "display the result" do
      sign_in_and_play "Rock"
      expect(page).to have_content "wins!"
    end

    scenario "further moves update correctly" do
      sign_in_and_play "Rock"
      click_button "Play again?"
      play_move "Paper"
      expect(page).to have_content "Jo Brown chose Paper"
    end
  end
end
