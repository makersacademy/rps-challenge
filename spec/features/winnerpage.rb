feature 'Checking winner is displayed' do
    scenario 'checking that the winner is displayed on the final screen' do
      visit('/play')
      click_button 'Rock'
      expect(page).to have_content 'Winner:'
    end
  end