feature "Drawing" do
  context "player and computer both choose rock" do
    scenario "diplays 'You Draw' on screen" do
      allow_any_instance_of(Player).to receive(:move).and_return("Rock")
      sign_in_and_play
      click_button("Rock")
      expect(page).to have_content("Computer chose Rock. You Draw :|")
    end
  end

  context "player and computer both choose paper" do
    scenario "diplays 'You Draw' on screen" do
      allow_any_instance_of(Player).to receive(:move).and_return("Paper")
      sign_in_and_play
      click_button("Paper")
      expect(page).to have_content("Computer chose Paper. You Draw :|")
    end
  end

  context "player and computer both choose scissors" do
    scenario "diplays 'You Draw' on screen" do
      allow_any_instance_of(Player).to receive(:move).and_return("Scissors")
      sign_in_and_play
      click_button("Scissors")
      expect(page).to have_content("Computer chose Scissors. You Draw :|")
    end
  end
end
