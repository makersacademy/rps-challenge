
feature 'Input player name' do
    scenario 'Input player names' do
      visit('/')
      fill_in :player1, with: 'Nadia'
      click_button 'Submit'
      expect(page).to have_content 'Nadia'
    end 
end