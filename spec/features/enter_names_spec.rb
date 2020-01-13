feature 'Enter names' do
    scenario 'submitting names' do
      visit('/')
      fill_in :player_1_name, with: 'Greg'
      click_button 'Submit'
      expect(page).to have_content 'Greg to play'
    end
  end