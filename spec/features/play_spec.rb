feature "play rock paper scissors" do
  context "human vs robot" do
    scenario "the user is prompted for a move" do
      sign_in
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
        10.times do
          click_button "Play again?"
          move = ["Rock", "Paper", "Scissors"].sample
          play_move move
          expect(page).to have_content "Jo Brown chose #{move}"
        end
      end
    end
  end

  context "robot vs robot" do
    scenario "it gives the result without requesting a move" do
      visit '/'
      click_button 'Enter names'
      click_button "Play again?"
      10.times do
        click_button "Play again?"
        expect(page).to have_content "wins!"
      end
    end
  end
end
