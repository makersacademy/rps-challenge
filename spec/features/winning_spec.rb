feature "Winning" do
  context "computer chose scissors" do
    scenario "display 'You Win' if player choosese rock" do
      allow_any_instance_of(Game).to receive(:chosen_move).and_return("Scissors")
      sign_in_and_play
      click_button("Rock")
      expect(page).to have_content("Computer chose Scissors. You Win! :D")
    end
  end
end
