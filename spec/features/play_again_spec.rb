feature "User can click a button to play again or rematch" do
  context "At the end of a game which was not a tie" do
    it "Redirects to play page with same player name" do
      allow(Kernel).to receive(:rand).and_return(2)
      sign_in_and_choose_rock
      click_button "Play Again"
      expect(page).to have_content "Marek vs. Computer"
    end
  end
  context "At the end of a game which was a tie" do
    it "Redirects to play page with same player name" do
      allow(Kernel).to receive(:rand).and_return(0)
      sign_in_and_choose_rock
      click_button "Rematch!"
      expect(page).to have_content "Marek vs. Computer"
    end
  end
end
