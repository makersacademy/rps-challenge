feature "play rock papers scissors" do
  scenario "the user is prompted for a move" do
    sign_in_and_play
    expect(page).to have_content "Select one of Rock, Paper or Scissors"
  end

  context "player makes a move" do
    scenario "confirm the player has selected Rock" do
      sign_in_and_play
      choose "Rock"
      click_button "Submit"
      expect(page).to have_content "Jo Brown chose Rock"
    end

    scenario "confirm the player has selected Paper" do
      sign_in_and_play
      choose "Paper"
      click_button "Submit"
      expect(page).to have_content "Jo Brown chose Paper"
    end

    scenario "confirm the player has selected Scissors" do
      sign_in_and_play
      choose "Scissors"
      click_button "Submit"
      expect(page).to have_content "Jo Brown chose Scissors"
    end
  end
end
