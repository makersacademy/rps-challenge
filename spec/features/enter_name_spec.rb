feature 'Entering names' do
    scenario 'Can accept player name' do
      sign_in
      expect(page).to have_content 'Enter your move Kirk'
    end
end
