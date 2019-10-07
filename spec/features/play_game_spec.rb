  feature "RockPaperScissors" do
    scenario "shows available options" do
      sign_and_play
      expect(page).to have_content "Rock Paper" 
    end

    scenario "player can win with rock" do
      sign_and_play
      select "Rock", from: "movee"
      click_button "Submit my choice"
      expect(page).to have_content "That was fun!" 
    end

    scenario "player can play again" do
      sign_and_play
      select "Rock", from: "movee"
      click_button "Submit my choice"
      click_button "Yes"
      expect(page).to have_content "Hi Bob" 
    end
  end