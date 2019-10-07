feature "Player 1 choosing paper" do
  context "in one player mode" do
    scenario "confirms player chose paper" do
      one_player_sign_in_and_play
      click_button("Paper")
      expect(page).to have_content("Imtiyaz chose Paper")
    end
  end

  context "in two player mode" do
    scenario "allows player 2 to choose move" do
      two_player_sign_in_and_play
      click_button("Paper")
      expect(page).to have_content("Luigi, choose your move")
    end
  end
end
