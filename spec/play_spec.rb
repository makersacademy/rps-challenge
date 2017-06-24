describe "play.erb" do
  feature "Setting player" do
    scenario "Can set player name" do
      visit "/"
      fill_in "player", :with => "Player 1"
      click_button "Play!"
      expect(page).to have_text("Player 1")
    end
  end
end
