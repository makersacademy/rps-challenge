feature "Winning" do
  context "computer chose scissors" do
    scenario "display 'You Win' if player chooses rock" do
      allow_any_instance_of(Player).to receive(:move).and_return("Scissors")
      one_player_sign_in_and_play
      click_button("Rock")
      expect(page).to have_content("Computer chose Scissors. You Win! :D")
    end
  end

  context "computer chose rock" do
    scenario "display 'You Win' if player chooses paper" do
      allow_any_instance_of(Player).to receive(:move).and_return("Rock")
      one_player_sign_in_and_play
      click_button("Paper")
      expect(page).to have_content("Computer chose Rock. You Win! :D")
    end
  end

  context "computer chose paper" do
    scenario "display 'You Win' if player chooses scissors" do
      allow_any_instance_of(Player).to receive(:move).and_return("Paper")
      one_player_sign_in_and_play
      click_button("Scissors")
      expect(page).to have_content("Computer chose Paper. You Win! :D")
    end
  end
end
