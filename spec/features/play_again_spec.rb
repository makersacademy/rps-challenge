feature "play again" do
  context "after winning" do
    scenario "by pressing button" do
      allow_any_instance_of(Game).to receive(:chosen_move).and_return("Rock")
      one_player_sign_in_and_play
      click_button("Paper")
      click_button("Play again?")
      expect(page).to have_content("Imtiyaz vs Computer")
    end
  end

  context "after drawing" do
    scenario "by pressing button" do
      allow_any_instance_of(Game).to receive(:chosen_move).and_return("Paper")
      one_player_sign_in_and_play
      click_button("Paper")
      click_button("Play again?")
      expect(page).to have_content("Imtiyaz vs Computer")
    end
  end

  context "after losing" do
    scenario "by pressing button" do
      allow_any_instance_of(Game).to receive(:chosen_move).and_return("Scissors")
      one_player_sign_in_and_play
      click_button("Paper")
      click_button("Play again?")
      expect(page).to have_content("Imtiyaz vs Computer")
    end
  end
end
