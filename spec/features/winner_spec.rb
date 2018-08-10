feature "The game displays the winner, or tie" do
  context "At the end of the game" do
    scenario "Player wins" do
      allow(Kernel).to receive(:rand).and_return(2)
      sign_in_and_choose_rock
      expect(page).to have_content "Marek Wins!"
    end
    scenario "Computer wins" do
      allow(Kernel).to receive(:rand).and_return(1)
      sign_in_and_choose_rock
      expect(page).to have_content "Computer Wins!"
    end
    scenario "Tie game" do
      allow(Kernel).to receive(:rand).and_return(0)
      sign_in_and_choose_rock
      expect(page).to have_content "It's a tie!"
    end

  end
end
