feature 'Enter names' do
    scenario 'Submitting names' do
      visit ('/')
      fill_in :player_name, with: 'Charlie'
      click_button 'Submit'
      expect(page).to have_content "Charlie"
    end
  end
