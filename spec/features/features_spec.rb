feature 'rps_feature tests' do
  feature 'Enter names' do
    scenario 'submitting names' do
      visit('/')
      fill_in :player_1, with: 'Player 1'
      fill_in :player_2, with: 'Player 2'
      click_button 'Submit'
      expect(page).to have_content 'Player 1 vs Player 2!!'
    end
  end
end