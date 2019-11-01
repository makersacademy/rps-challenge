feature 'Enter names' do
    scenario 'submitting names' do
      visit('/')
      fill_in :player_1_name, with: 'Ruby'
      click_button 'Submit'
      expect(page).to have_content 'Ruby vs. Computer'
    end
  end