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
      allow(game).to recieve(:rock).with('rock')
      click_button 'Submit'
      click_button 'Rock'
      expect(page).to have_content 'The game is a tie'
    end
  end
  feature 'testing the game allows you to play again' do
    scenario 'player plays once then has the option
    to select play again' do
      visit ('/')
      fill_in :player_name, with: 'Harry'
      click_button 'Submit'
      click_button 'Rock'
      page.should have_selector(:link_or_button, 'play again?')
      click_button 'play again?'
      expect(page).to have_content 'Harry vs. Computer'
    end
  end
  feature 'testing the player can select scissors' do
   scenario 'player selects scissors' do
    visit ('/')
      visit ('/')
      fill_in :player_name, with: 'Harry'
      click_button 'Submit'
      click_button 'Scissors'
      expect(page).to have_content 'Harry chooses scissors'
    end
  end