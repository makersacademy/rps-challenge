  feature "RockPaperScissors" do
    scenario "shows available options" do
      sign_and_play
      expect(page).to have_content "Rock Paper" 
    end
  end