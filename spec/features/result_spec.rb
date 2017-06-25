describe "result.erb" do
  feature "Player name" do
    scenario "Can display player name" do
      sign_in_and_play
      pick_rock
      expect(page).to have_text("Player 1")
    end
  end
end
