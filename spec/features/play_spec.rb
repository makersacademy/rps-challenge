describe "play.erb" do
  feature "Setting player" do
    scenario "Can set player name" do
      sign_in_and_play
      expect(page).to have_text("Player 1")
    end
  end

  feature "RPS selectors" do
    scenario "Player can pick rock weapon" do
      sign_in_and_play
      expect(page).to have_button("Rock")
    end
  end

  feature "RPS selectors" do
    scenario "Player can pick paper weapon" do
      sign_in_and_play
      expect(page).to have_button("Paper")
    end
  end

  feature "RPS selectors" do
    scenario "Player can pick scissors weapon" do
      sign_in_and_play
      expect(page).to have_button("Scissors")
    end
  end
end
