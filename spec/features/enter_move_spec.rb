feature 'Entering move' do
    scenario 'Accepts correct move' do
      sign_in
      click_button 'rock'
      expect(page).to have_content 'You played : rock'
    end
end
