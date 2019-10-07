feature "Winning" do
  context "one player mode" do
    before {
      allow_any_instance_of(Game).to receive(:outcome).and_return("You Win! :D")
    }
    context "computer chose scissors" do
      before {
        allow_any_instance_of(Player).to receive(:chose_paper?).and_return(false)
        allow_any_instance_of(Player).to receive(:chose_rock?).and_return(false)
        allow_any_instance_of(Player).to receive(:chose_scissors?).and_return(true)
        allow_any_instance_of(Player).to receive(:move).and_return("Scissors")
      }
      scenario "display 'You Win' if player chooses rock" do
        one_player_sign_in_and_play
        click_button("Rock")
        expect(page).to have_content("Computer chose Scissors. You Win! :D")
      end
    end

    context "computer chose rock" do
      before {
        allow_any_instance_of(Player).to receive(:chose_scissors?).and_return(false)
        allow_any_instance_of(Player).to receive(:chose_paper?).and_return(false)
        allow_any_instance_of(Player).to receive(:chose_rock?).and_return(true)
        allow_any_instance_of(Player).to receive(:move).and_return("Rock")
      }
      scenario "display 'You Win' if player chooses paper" do
        one_player_sign_in_and_play
        click_button("Paper")
        expect(page).to have_content("Computer chose Rock. You Win! :D")
      end
    end

    context "computer chose paper" do
      before {
        allow_any_instance_of(Player).to receive(:chose_rock?).and_return(false)
        allow_any_instance_of(Player).to receive(:chose_scissors?).and_return(false)
        allow_any_instance_of(Player).to receive(:chose_paper?).and_return(true)
        allow_any_instance_of(Player).to receive(:move).and_return("Paper")
      }
      scenario "display 'You Win' if player chooses scissors" do
        one_player_sign_in_and_play
        click_button("Scissors")
        expect(page).to have_content("Computer chose Paper. You Win! :D")
      end
    end
  end

  context "two player mode" do
    context "player two chooses scissors" do
      scenario "displays 'Mario Wins! :D' if player one chooses rock" do
        two_player_sign_in_and_play
        click_button("Rock")
        click_button("Scissors")
        expect(page).to have_content("Mario chose Rock. Luigi chose Scissors. Mario Wins! :D")
      end
    end

    context "player two chooses paper" do
      scenario "displays 'Mario Wins! :D' if player one chooses scissors" do
        two_player_sign_in_and_play
        click_button("Scissors")
        click_button("Paper")
        expect(page).to have_content("Mario chose Scissors. Luigi chose Paper. Mario Wins! :D")
      end
    end

    context "player two chooses rock" do
      scenario "displays 'Mario Wins! :D' if player one chooses paper" do
        two_player_sign_in_and_play
        click_button("Paper")
        click_button("Rock")
        expect(page).to have_content("Mario chose Paper. Luigi chose Rock. Mario Wins! :D")
      end
    end
  end

end
