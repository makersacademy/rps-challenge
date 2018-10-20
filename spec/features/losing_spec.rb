feature "Losing" do
  context "computer chooses paper" do
    scenario "diplays 'You Lose' on screen if player chooses rock" do
      allow_any_instance_of(Game).to receive(:chosen_move).and_return("Paper")
      sign_in_and_play
      click_button("Rock")
      expect(page).to have_content("Computer chose Paper. You Lose :(")
    end
  end

  context "computer chooses scissors" do
    scenario "diplays 'You Lose' on screen if player chooses paper" do
      allow_any_instance_of(Game).to receive(:chosen_move).and_return("Scissors")
      sign_in_and_play
      click_button("Paper")
      expect(page).to have_content("Computer chose Scissors. You Lose :(")
    end
  end

  context "computer chooses rock" do
    scenario "diplays 'You Lose' on screen if player chooses scissors" do
      allow_any_instance_of(Game).to receive(:chosen_move).and_return("Rock")
      sign_in_and_play
      click_button("Scissors")
      expect(page).to have_content("Computer chose Rock. You Lose :(")
    end
  end
end
