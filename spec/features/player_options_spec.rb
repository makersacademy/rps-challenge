
  feature 'Player selects an option ' do
    scenario 'submitting rbs option in the second form' do
      visit('/')
      fill_in :player_name, with: 'Simone'
      click_button 'Submit'
      visit('/game_redirect')
      choose 'p'
      click_button 'Submit'
      expect(page).to have_content 'p'
   end
  end
