feature "Drawing" do
  context "one player mode" do
    context "player and computer both choose rock" do
      scenario "diplays 'You Draw' on screen" do
        allow_any_instance_of(Player).to receive(:move).and_return("Rock")
        one_player_sign_in_and_play
        click_button("Rock")
        expect(page).to have_content("Computer chose Rock. You Draw :|")
      end
    end

    context "player and computer both choose paper" do
      scenario "diplays 'You Draw' on screen" do
        allow_any_instance_of(Player).to receive(:move).and_return("Paper")
        one_player_sign_in_and_play
        click_button("Paper")
        expect(page).to have_content("Computer chose Paper. You Draw :|")
      end
    end

    context "player and computer both choose scissors" do
      scenario "diplays 'You Draw' on screen" do
        allow_any_instance_of(Player).to receive(:move).and_return("Scissors")
        one_player_sign_in_and_play
        click_button("Scissors")
        expect(page).to have_content("Computer chose Scissors. You Draw :|")
      end
    end
  end

  context "two player mode" do
    context "player two chooses rock" do
      scenario "displays 'Draw' if player one chooses rock" do
        two_player_sign_in_and_play
        click_button("Rock")
        click_button("Rock")
        expect(page).to have_content("Mario chose Rock. Luigi chose Rock. You Draw :|")
      end
    end

    context "player two chooses paper" do
      scenario "displays winner if player one chooses paper" do
        two_player_sign_in_and_play
        click_button("Paper")
        click_button("Paper")
        expect(page).to have_content("Mario chose Paper. Luigi chose Paper. You Draw :|")
      end
    end

    context "player two chooses scissors" do
      scenario "displays winner if player one chooses scissors" do
        two_player_sign_in_and_play
        click_button("Scissors")
        click_button("Scissors")
        expect(page).to have_content("Mario chose Scissors. Luigi chose Scissors. You Draw :|")
      end
    end
  end
end
