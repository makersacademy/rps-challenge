feature 'Enter names' do
    scenario 'submitting names' do
      visit('/')
      fill_in :player_1_name, with: 'Ruby'
      #fill_in :player_2_name, with: 'Computer'
      click_button 'Submit'
      expect(page).to have_content 'Ruby vs. Computer'
    end
  end