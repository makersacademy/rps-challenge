feature "play again" do
  context "one player mode" do
    context "after winning" do
      scenario "should reset the game" do
        allow_any_instance_of(Game).to receive(:chosen_move).and_return("Rock")
        one_player_sign_in_and_play
        click_button("Paper")
        click_button("Play again?")
        expect(page).to have_content("Imtiyaz vs Computer")
      end
    end

    context "after drawing" do
      scenario "should reset the game" do
        allow_any_instance_of(Game).to receive(:chosen_move).and_return("Paper")
        one_player_sign_in_and_play
        click_button("Paper")
        click_button("Play again?")
        expect(page).to have_content("Imtiyaz vs Computer")
      end
    end

    context "after losing" do
      scenario "should reset the game" do
        allow_any_instance_of(Game).to receive(:chosen_move).and_return("Scissors")
        one_player_sign_in_and_play
        click_button("Paper")
        click_button("Play again?")
        expect(page).to have_content("Imtiyaz vs Computer")
      end
    end
  end

  context "two player mode" do
    context "after winning" do
      scenario "should reset the game" do
        two_player_sign_in_and_play
        click_button("Rock")
        click_button("Scissors")
        click_button("Play again?")
        click_button("Rock")
        expect(page).to have_content("Luigi, choose your move")
      end
    end

    context "after drawing" do
      scenario "should reset the game" do
        two_player_sign_in_and_play
        click_button("Rock")
        click_button("Rock")
        click_button("Play again?")
        click_button("Rock")
        expect(page).to have_content("Luigi, choose your move")
      end
    end

    context "after losing" do
      scenario "should reset the game" do
        two_player_sign_in_and_play
        click_button("Rock")
        click_button("Paper")
        click_button("Play again?")
        click_button("Rock")
        expect(page).to have_content("Luigi, choose your move")
      end
    end
  end
end
