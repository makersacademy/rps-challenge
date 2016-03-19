feature "Result" do
  context "solo player and Computer chooses Paper" do
    before do
      single_sign_in
      allow_any_instance_of(Array).to receive(:sample).and_return :paper
    end

    scenario "player loses when choosing Rock" do
      click_button "Rock"
      expect(page).to have_content "Awww, you lost! :("
    end

    scenario "it is a tie when player chooses Paper" do
      click_button "Paper"
      expect(page).to have_content "It's a tie"
    end

    scenario "player wins when choosing Scissors" do
      click_button "Scissors"
      expect(page).to have_content "Woohoo! You won! :D"
    end

    scenario "allows player to rematch" do
      click_button "Rock"
      expect(page).to have_link "Play Again!"
    end

    scenario "allows to change player" do
      click_button "Rock"
      expect(page).to have_link "Change Player"
    end
  end

  context "multiplayer and play 1 chooses Rock" do
    before do
      double_sign_in
      click_button "Rock"
    end

    scenario "player 1 wins when player 2 chooses Scissors" do
      click_button "Scissors"
      expect(page).to have_content "Mittens won!"
    end

    scenario "player 2 wins when player 2 chooses Paper" do
      click_button "Paper"
      expect(page).to have_content "Fluffy won!"
    end

    scenario "it is a tie when player 2 chooses Rock" do
      click_button "Rock"
      expect(page).to have_content "It's a tie"
    end
  end
end
