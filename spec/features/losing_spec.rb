feature "Losing" do
  context "one player mode" do
    context "computer chooses paper" do
      scenario "diplays 'Luigi Wins! :D' on screen if player chooses rock" do
        allow_any_instance_of(Player).to receive(:move).and_return("Paper")
        one_player_sign_in_and_play
        click_button("Rock")
        expect(page).to have_content("Computer chose Paper. You Lose :(")
      end
    end

    context "computer chooses scissors" do
      scenario "diplays 'Luigi Wins! :D' on screen if player chooses paper" do
        allow_any_instance_of(Player).to receive(:move).and_return("Scissors")
        one_player_sign_in_and_play
        click_button("Paper")
        expect(page).to have_content("Computer chose Scissors. You Lose :(")
      end
    end

    context "computer chooses rock" do
      scenario "diplays 'Luigi Wins! :D' on screen if player chooses scissors" do
        allow_any_instance_of(Player).to receive(:move).and_return("Rock")
        one_player_sign_in_and_play
        click_button("Scissors")
        expect(page).to have_content("Computer chose Rock. You Lose :(")
      end
    end
  end

  context "two player mode" do
    context "player two chooses paper" do
      scenario "displays winner if player one chooses rock" do
        two_player_sign_in_and_play
        click_button("Rock")
        click_button("Paper")
        expect(page).to have_content("Mario chose Rock. Luigi chose Paper. Luigi Wins! :D")
      end
    end

    context "player two chooses scissors" do
      scenario "displays winner if player one chooses paper" do
        two_player_sign_in_and_play
        click_button("Paper")
        click_button("Scissors")
        expect(page).to have_content("Mario chose Paper. Luigi chose Scissors. Luigi Wins! :D")
      end
    end

    context "player two chooses rock" do
      scenario "displays winner if player one chooses scissors" do
        two_player_sign_in_and_play
        click_button("Scissors")
        click_button("Rock")
        expect(page).to have_content("Mario chose Scissors. Luigi chose Rock. Luigi Wins! :D")
      end
    end
  end
end
