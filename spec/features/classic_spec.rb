feature "ClassicMode" do
  feature "Selections" do
    scenario "selects Rock" do
      start_classic_game
      click_button "Rock"
      expect(page).to have_content "You picked Rock"
      expect(page).not_to have_content "You picked Paper"
      expect(page).not_to have_content "You picked Scissors"
    end

    scenario "selects Paper" do
      start_classic_game
      click_button "Paper"
      expect(page).not_to have_content "You picked Rock"
      expect(page).to have_content "You picked Paper"
      expect(page).not_to have_content "You picked Scissors"
    end

    scenario "selects Scissors" do
      start_classic_game
      click_button "Scissors"
      expect(page).not_to have_content "You picked Rock"
      expect(page).not_to have_content "You picked Paper"
      expect(page).to have_content "You picked Scissors"
    end
  end
end
