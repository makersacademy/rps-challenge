feature 'rps_feature tests' do
  feature 'Enter names' do
    scenario 'submitting names returns new game' do
      visit('/')
      fill_in :player1, with: 'Player 1'
      fill_in :player2, with: 'Player 2'
      click_button "Begin Game"
      expect(page).to have_content 'Player 1 vs Player 2 Rock Paper Scissors, FIGHT!!'
    end
  end
end