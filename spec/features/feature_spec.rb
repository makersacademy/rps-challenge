feature 'register your name to play online game' do
  scenario 'submitting name' do
    visit ('/')
      fill_in :player_name, with: 'Harry'
      click_button 'Submit'
      expect(page).to have_content 'Harry vs. Computer'
  end
end
  feature 'testing the outcomes for player selecting Rock' do
    scenario 'player selects Rock computer selects Rock' do
      visit ('/')
      fill_in :player_name, with: 'Harry'
      click_button 'Submit'
      click_button 'Rock'
      expect(page).to have_content 'The game is a tie'
    end
  end