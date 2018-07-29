feature "Testing player choosing an attack" do
  context "Player can choose rock, paper, or scissors and get cofirmation on screen" do
    before do
      sign_in_and_play
    end
    scenario "Player chooses rock" do
      click_button "Rock"
      expect(page).to have_content "Marek chose rock"
    end
    scenario "Player chooses paper" do
      click_button "Paper"
      expect(page).to have_content "Marek chose paper"
    end
    scenario "Player chooses scissors" do
      click_button "Scissors"
      expect(page).to have_content "Marek chose scissors"
    end
    scenario "Player chooses spock" do
      click_button "Spock"
      expect(page).to have_content "Marek chose spock"
    end
    scenario "Player chooses lizard" do
      click_button "Lizard"
      expect(page).to have_content "Marek chose lizard"
    end
  end
end
