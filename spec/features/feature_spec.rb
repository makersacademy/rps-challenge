feature 'register your name to play online game' do
  scenario 'submitting name' do
    visit ('/')
      fill_in :player_name, with: 'Harry'
      click_button 'Submit'
      expect(page).to have_content 'Harry vs. Computer'
  end
end