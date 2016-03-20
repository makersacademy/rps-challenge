feature '#attack' do
  context '> single player' do
    scenario '>should play turn as rock if rock button is clicked' do
      sign_in_single_player
      click_button "Rock"
      expect(page).to have_content("Name played Rock.")
    end

    scenario '>should play turn as paper if paper button is clicked' do
      sign_in_single_player
      click_button "Paper"
      expect(page).to have_content("Name played Paper.")
    end

    scenario '>should play turn as scissors if scissor button is clicked' do
      sign_in_single_player
      click_button "Scissors"
      expect(page).to have_content("Name played Scissors.")
    end

    scenario '>computer should play back random attack when any choice is clicked' do
      allow_any_instance_of(Array).to receive(:sample).and_return("Rock")
      sign_in_single_player
      click_button "Scissors"
      expect(page).to have_content("Your opponent played Rock.")
    end

    scenario '>should be allowed to return to home page' do
      sign_in_single_player
      click_button "Scissors"
      click_button "Home"
      expect(page).to have_content("Welcome to Rock, Paper, Scissors World")
    end

    scenario '>should tell you if you win' do
      allow_any_instance_of(Array).to receive(:sample).and_return("Rock")
      sign_in_single_player
      click_button "Paper"
      expect(page).to have_content("Name wins this round!")
    end
  end

  context '#Multi-Player' do
    scenario '>should play one turn after the other' do
      sign_in_multi_player
      click_button "Paper"
      expect(page).to have_content("P2 plays next. Pick your attack!")
    end

    scenario '>should tell you which player wins/loses'do
      sign_in_multi_player
      click_button "Paper"
      click_button "Rock"
      expect(page).to have_content("P1 wins this round!")
    end
  end
end
