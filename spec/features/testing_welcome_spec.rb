

  feature 'Checks player name is recorded' do
    scenario 'Check player name entered recorded on welcome page' do
      visit('/')
      fill_in :name, with: "Andy"
      click_button 'Submit'
      expect(page).to have_content 'Andy'
    end
end