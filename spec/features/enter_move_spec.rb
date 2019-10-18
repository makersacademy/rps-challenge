feature 'Entering move' do
    scenario 'Accepts correct move' do
      sign_in_and_play
      click_button 'rock'
      expect(page).to have_content 'You played : rock'
    end
end
