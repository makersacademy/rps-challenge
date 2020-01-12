feature 'End Game' do
  context 'Player 1 beats Computer' do
    scenario "Human Wins" do
      visit_submit_name
      click_button 'Rock'
      expect(page).to have_content "Human Wins"
    end
  end

  context 'Computer beats player 1' do
    scenario "Computer Wins" do
      visit_submit_name
      click_button 'Rock'
      expect(page).to have_content "Computer Wins"
    end
  end

  context 'PLayer 1 and Player 2 Tie' do
    scenario "Game ends in a Tie" do
      visit_submit_name
      click_button 'Rock'
      expect(page).to have_content "Tie"
    end
  end

  context 'Restart Game' do
    scenario 'Play another game after winning/loosing or a Tie' do
      visit_submit_name
      click_button 'Scissors'
      expect(page).to have_button 'Restart Game'
    end
  end

end
