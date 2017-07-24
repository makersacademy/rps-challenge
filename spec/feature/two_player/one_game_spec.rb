feature 'Cane select two player game' do
  scenario 'you can enter two player names' do
      visit ('/')
      click_button 'Two Players'
      fill_in :player_one_name, with: 'Eoin'
      fill_in :player_two_name, with: 'Frank'
      click_button 'Submit'
      expect(page).to have_content "Eoin"
  end
end

feature 'Cane select two player game' do
  scenario 'you can enter two player names' do
      visit ('/')
      click_button 'Two Players'
      fill_in :player_one_name, with: 'Eoin'
      fill_in :player_two_name, with: 'Frank'
      click_button 'Submit'
      click_button 'Rock'
      click_button 'Next turn'
      click_button 'Paper'
      expect(page).to have_content "Frank wins!"
  end
end

feature 'Cane select two player game' do
  scenario 'you can enter two player names' do
      visit ('/')
      click_button 'Two Players'
      fill_in :player_one_name, with: 'Eoin'
      fill_in :player_two_name, with: 'Frank'
      click_button 'Submit'
      click_button 'Rock'
      click_button 'Next turn'
      click_button 'Rock'
      expect(page).to have_content "It's a Draw!"
  end
end

feature 'Cane select two player game' do
  scenario 'you can enter two player names' do
      visit ('/')
      click_button 'Two Players'
      fill_in :player_one_name, with: 'Eoin'
      fill_in :player_two_name, with: 'Frank'
      click_button 'Submit'
      click_button 'Rock'
      click_button 'Next turn'
      click_button 'Sissors'
      expect(page).to have_content "Eoin wins!"
  end
end
